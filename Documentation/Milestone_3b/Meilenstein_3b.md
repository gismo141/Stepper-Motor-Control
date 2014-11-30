# Planung des Projekts

Das Gantt-Diagramm in Abbildung \ref{fig:gantt} wurde auf eingetretene Verzögerungen angepasst, sodass die Deadline Mitte Dezember eingehalten werden kann.
 
Abbildung \ref{fig:projektplanung} zeigt den geplanten und benötigten Zeitaufwand für die Erstellung des Meilenstein 3b unterteilt in folgende Aufgabenbereiche:

- Einarbeitung
- Zeitplanung
- Design
- Implementierung
- Verifikation
- Dokumentation

Die Darstellung wird gesondert für die Studenten Marc Kossmann und Michael Riedel betrachtet. Diese Zeiten sind unabhängig von gemeinsam bearbeiteten Aufgaben. Die Abbildung \ref{fig:zeitbedarf} zeigt die komplette geplante und benötigte Zeit, die durch Aufsummierung der einzelnen Meilensteine entsteht.

Die Gesamtzeiten berechnen sich aus der Aufsummierung der einzelnen Zeiten der Studenten Marc Kossmann und Michael Riedel sowie der gemeinsam zusätzlich aufgewendeten Zeit.

![Gantt-Diagramm zur kompletten Zeitplanung\label{fig:gantt}][fig:gantt]

![Projektplanung für Meilenstein 3a\label{fig:projektplanung}][fig:projektplanung]

![Zeitbedarfsübersicht für das gesamte Projekt\label{fig:zeitbedarf}][fig:zeitbedarf]

# Anpassungen an der Komponente register_interface

Für diesen Meilenstein wurden keine Veränderungen an dieser Komponente vorgenommen. Abbildung \ref{fig:register_interface_bd} zeigt das Block-Diagramm des `register_interface`.

![Block-Diagramm der register_interface-Komponente\label{fig:register_interface_bd}][fig:register_interface_bd]

# Design der Motor-Control-Unit

Die Motor-Control-Unit ist die Schnittstelle zwischen dem NIOS-II Prozessor und der Schrittmotor-Einheit. Sie erstellt entsprechend der vom Benutzer eingestellten Betriebsmodi die Pulsweiten-modulierten (PWM)-Signale für den Schrittmotor, aktiviert, stoppt und überwacht das gewünschte Verfahren.

| Kombination | Modus                                 |
| :---------: | :------------------------------------ |
| xx00        | Stop                                  |
| xx01        | Continuous Run                        |
| 0010        | Chain of Steps - 1/4 rotation         |
| 0110        | Chain of Steps - 1/2 rotation         |
| 1010        | Chain of Steps - 1 rotation           |
| 1110        | Chain of Steps - 2 rotations          |
| other       | reserved                              |

Table: Betriebsmodi der Motor-Control-Unit \label{tab:modi}

Gemäß Kundenwunsch werden die Betriebsmodi gemäß Tabelle \ref{tab:modi} durch die Komponente zur Verfügung gestellt.

## Überblick

Gemäß Abbildung \ref{fig:motor_control_unit_bd} besteht die Komponente `motor_control_unit` aus den zwei Teilkomponenten `counter` und `signal_generator`. Der Signalgenerator wird dabei durch das `clk_out`-Signal des Taktteilers in den `prescaler`-Eingang gespeist.

![Block-Diagramm der Motor-Control-Unit-Komponente\label{fig:motor_control_unit_bd}][fig:motor_control_unit_bd]

## Design der Komponente counter

Der Counter wird allgemeingültig realisiert. Dadurch kann der Teilerwert individuell durch ein `generic` konfiguriert und mit unterschiedlichen Frequenzen betrieben werden. Dies ermöglicht eine einfache Anpassung von Meilenstein 3b zu Meilenstein 4.

Der einzustellende Taktteiler berechnet sich wie folgt:

\begin{equation}
\begin{aligned}
    \text{Taktteiler} &= \frac{\text{clk}_\text{in}}{\text{clk}_\text{out}} \\
    \\
    \text{clk}_\text{in} &= \text{Eingangsfrequenz} \\
    \text{clk}_\text{out} &= \text{Ausgabefrequenz}
\end{aligned}
\end{equation}

## Design der Komponente signal_generator

Der Signalgenerator wird in Form mehrerer State-Machines realisiert, um die Windungen des Motors in korrekter Reihenfolge und gemäß Eingaben durch den Anwender anzusteuern. Um dies zu ermöglichen, werden verschiedene Sub-State-Machines verwendet, die in den folgenden Abschnitten erläutert werden.

### Die Mode-State-Machine

Die `motor_control_unit` wird gemäß Abbildung \ref{fig:motor_control_unit_sm} in Form einer State-Machine realisiert. In ihr sind die Übergänge zwischen den verschiedenen Betriebsmodi, sowie der Anzahl der zu zählenden Schritte für die entsprechenden Rotationen dargestellt. Der Übergang wird nur dann gewechselt, sofern ein `prescaler`-Signal, ein gültiger Mode, ein interrupt-request (`IR`) durch die Steuerung selbst oder der Benutzer einen `reset_n` ausgelöst hat.

![State-Machine zu den Mode-Übergängen der Motor-Control-Unit-Komponente\label{fig:motor_control_unit_sm}][fig:motor_control_unit_sm]

### Die Speed-State-Machine

Gemäß Abbildung \ref{fig:speed_sm} wird der 3-bit Eingang `speed`auf die zu zählenden Pulsweiten abgebildet. In der vorliegenden Arbeit, wird mit einer Pulsweiten-Auflösung von 5 ms gearbeitet. Die `speed`-Einstellung wird `clock`-synchron übernommen.

![State-Machine zur Verknüpfung der speed-Einstellung mit dem Pulsweiten-Zähler\label{fig:speed_sm}][fig:speed_sm]

### Die PWM-State-Machine

Gemäß Abbildung \ref{fig:motor_phases_sm} ist ersichtlich, wie die Motorwindungen in Abhängigkeit zur `direction` geschaltet werden. Die Umschaltung der Zustände erfolgt nur, wenn eine steigende Flanke des `prescaler`-Eingangs anliegt und der `pwm_5ms_counter = 0` ist. Der `pwm_5ms_counter` wird auf `0` zurückgesetzt, wenn er den eingestellten `speed`-Wert erreicht hat. Im Falle eines `reset_n`-Signals wird er mit `-1` initialisiert. Dieser Wert wird ebenfalls verwendet, wenn sich der `signal_generator` im `IDLE` oder `CR`-Modus befindet, um unendlich viele Schritte zu symbolisieren.

![State-Machine zu Beschaltung der Wicklungen des Schrittmotors\label{fig:motor_phases_sm}][fig:motor_phases_sm]

## Integration in eine Testumgebung durch die Komponente debug_key_detect

Damit die `motor_control_unit` unabhängig vom NIOS-II Prozessor getestet werden kann, wird im Meilenstein 3b eine eigene Komponente erstellt, die gemäß Abbildung \ref{fig:milestone3a} das `register_interface` und die `motor_control_unit` mit einer `debug_key_detect`-Komponente verbindet.

Diese Komponente ermöglicht das gezielte Simulieren der Prozessoranfragen an die Motor-Control-Unit. Sie beschreibt das `register_interface` mit den gewünschten Daten und initiiert das Verfahren des Schrittmotors.

Gemäß Abbildung \ref{fig:uebersicht-der-komponenten-und-rollen} können die einzelnen Aufgaben, die die jeweiligen Komponenten übernehmen. 

![Block-Diagramm der Testumgebung\label{fig:milestone3a}][fig:milestone3a]

![Überblick der Komponenten und Rollen\label{fig:uebersicht-der-komponenten-und-rollen}][fig:uebersicht-der-komponenten-und-rollen]

# Test der Motor-Control-Unit

Um die korrekte Funktion der `motor_control_unit` sicherzustellen, wurde eine Testbench gemäß folgender Testverfahren erstellt.

## Test-Prozedur 1 - Reset-Funktionalität

| signal         | desired output |
| :------------- | :--------------|
| mode_state     | `IDLE`         |
--!    | pwm_state      | `ONE`          |
--!           | steps_counter  | `0`            |
--!           | motor_pwm      | `0000`         | 
--!           | motor_en       | `00`           |
--!           | ir             | `0`            |

## Test Prozedur 2

<!-- Links -->

[fig:gantt]: ../Planning/Gantt-Diagramm.png "Gantt-Diagramm zur kompletten Zeitplanung"

[fig:projektplanung]: ../Planning/Planung_Meilenstein3a.png "Projektplanung für Meilenstein 3a" 

[fig:zeitbedarf]: ../Planning/Zeitbedarf.png "Zeitbedarfsübersicht für das gesamte Projekt"

[fig:register_interface_bd]: ../Milestone_3a/Diagrams/Block/register_interface.png "Block Diagramm des Register Interface"

[fig:motor_control_unit_bd]: ../Milestone_3a/Diagrams/Block/motor_control_unit.png "Block-Diagramm der Motor-Control-Unit-Komponente"

[fig:motor_control_unit_sm]: ../Milestone_3a/Diagrams/State-Machines/motor_control_unit.png "State-Machine zu den Mode-Übergängen der Motor-Control-Unit-Komponente"

[fig:motor_phases_sm]: ../Milestone_3a/Diagrams/State-Machines/motor_phases.png "State-Machine zu Beschaltung der Wicklungen des Schrittmotors"

[fig:milestone3a]: ../Milestone_3a/Diagrams/Block/milestone3a.png "Block-Diagramm der Testumgebung"

[fig:uebersicht-der-komponenten-und-rollen]: ../Milestone_3a/Diagrams/Uebersicht-Komponenten-und-Rollen.png "Überblick der Komponenten und Rollen"
