# Planung des Projekts

Das Gantt-Diagramm in Abbildung \ref{fig:gantt} wurde auf eingetretene Verzögerungen angepasst, sodass die Deadline Mitte Dezember eingehalten werden kann.
 
Abbildung \ref{fig:projektplanung} zeigt den geplanten und benötigten Zeitaufwand für die Erstellung des Meilenstein 2 unterteilt in folgende Aufgabenbereiche:

- Einarbeitung
- Zeitplanung
- Design
- Implementierung
- Verifikation
- Dokumentation

Die Darstellung wird gesondert für die Studenten Marc Kossmann und Michael Riedel betrachtet. Diese Zeiten sind unabhängig von gemeinsam bearbeiteten Aufgaben. Die Abbildung \ref{fig:zeitbedarf} zeigt die komplette geplante und benötigte Zeit, die durch Aufsummierung der einzelnen Meilensteine entsteht.

![Gantt-Diagramm zur kompletten Zeitplanung\label{fig:gantt}][fig:gantt]

![Projektplanung für Meilenstein 2\label{fig:projektplanung}][fig:projektplanung]

![Zeitbedarfsübersicht für das gesamte Projekt\label{fig:zeitbedarf}][fig:zeitbedarf]

# Design der Komponente *Register-Interface*

Aufgrund der geringen Komplexität wurde für diese Komponente kein expliziter Designprozess wie z. B. in Meilenstein 1 durchlaufen. Nach einer kurzen Einarbeitung in die Aufgabenstellung und unter Berücksichtigung der Erkenntnisse aus dem Tutorial, wurde der Quellcode direkt entworfen. Anschließend wurde das gewünschte Verhalten mithilfe einer Modelsim-Simulation verifiziert. Abbildung \ref{fig:register_interface} zeigt die daraus entstandene Komponente `register_interface`, die jetzt in Quartus zur Verfügung steht.

![Block Diagramm des Register Interface\label{fig:register_interface}][fig:register_interface]

| Adresse |  Register  |
| :-----: | :--------- |
|   000   | ctrlReg    |
|   001   | ctrlSetReg |
|   010   | ctrlClrReg |
|   011   | speedReg   |
|   100   | stepsReg   |

Table: Adressbeschaltung zum Registerzugriff \label{tab:adressen}

Gemäß Aufgabenstellung ermöglicht sie das Lesen und Schreiben über einen 3-Bit Adressbus. Dabei können die Register `stepsReg` und `speedReg` direkt, das `ctrlReg`-Register direkt sowie über sogenannte *Set* und *Clear*-Register beschrieben werden. Durch die `ctrlSetReg` und `ctrlClrReg`-Register können einzelne auf `1` gesetzte Bits verändert werden, die mit `0` maskierten Bits behalten den bisherigen Wert.

Die Tabelle \ref{tab:adressen} zeigt die notwendige Beschaltung für den Registerzugriff.

# Änderungen an der Steuersoftware

Zugunsten der Übersichtlichkeit wurden alle definierten Datentypen in dem Header `dataTypes.h` zusammengefasst.

Wie für diesen Meilenstein verlangt, verwendet die Steuersoftware nun die tatsächlichen Register der VHDL-Komponente `register_interface`. Dazu wurden Makros für den Hardwarezugriff eingeführt und die entsprechenden Funktionen im Header `registerAcces.h` angepasst.

# Darstellung der internen Kommunikation

Die `UserInput`- und `UserOutput`-Tasks haben bisher über eine Mailbox die Daten der Registerinhalte ausgetauscht. Diese Mailbox wurde in eine globale Variablenstruktur umgewandelt, da es in der Steuersoftware nur einen aktuellen Inhalt in den Registern gibt. Es ist nicht notwendig, vorherige Inhalte zwischenzuspeichern. Der geregelte Zugriff auf die globale Struktur wird durch die Verwendung eines Mutexes sichergestellt. Die Anpassungen sind in Abbildung \ref{fig:kommunikation} ersichtlich.

![Auflistung Betriebssystemkomponenten\label{fig:auflistung}][fig:auflistung]

![Übersicht der Komponenten und Kommunikation\label{fig:kommunikation}][fig:kommunikation]

<!-- Links -->

[fig:gantt]: ../Planning/Gantt-Diagramm.png "Gantt-Diagramm zur kompletten Zeitplanung"

[fig:projektplanung]: ../Planning/Planung_Meilenstein2.png "Projektplanung für Meilenstein 2" 

[fig:zeitbedarf]: ../Planning/Zeitbedarf.png "Zeitbedarfsübersicht für das gesamte Projekt"

[fig:register_interface]: ../Milestone_2/Diagrams/bd_register_interface.png "Block Diagramm des Register Interface"

[fig:anwendungsfaelle]: ../Milestone_2/Diagrams/UseCases.png "Anwendungsfälle"

[fig:user_input]: ../Milestone_2/Diagrams/Activities/Tasks/User-Input.png "User-Input Task"

[fig:user_output]: ../Milestone_2/Diagrams/Activities/Tasks/User-Output.png "User-Output Task"

[fig:heartbeat_debug]: ../Milestone_2/Diagrams/Activities/Tasks/Heartbeat-Debug.png "Heartbeat/Debug Task"

[fig:key_isr]: ../Milestone_2/Diagrams/Activities/ISRs/key_ISR.png "Key ISR"

[fig:switch_isr]: ../Milestone_2/Diagrams/Activities/ISRs/switch_ISR.png "Switch ISR"

[fig:motor_isr]: ../Milestone_2/Diagrams/Activities/ISRs/motor_ISR.png "Motor ISR"

[fig:main]: ../Milestone_2/Diagrams/Activities/Functions/Main.png "Main Funktion"

[fig:chain_of_steps]: ../Milestone_2/Diagrams/Activities/Functions/Chain-of-Steps.png "Chain of Steps Funktion"

[fig:continuous_run]: ../Milestone_2/Diagrams/Activities/Functions/Continuous-Run.png "Continuous Run Funktion"

[fig:heartbeat]: ../Milestone_2/Diagrams/Activities/Functions/Heartbeat.png "Heartbeat Funktion"

[fig:auflistung]: ../Milestone_2/Diagrams/Auflistung_Betriebssystemkomponenten.png "Auflistung Betriebssystemkomponenten"

[fig:kommunikation]: ../Milestone_2/Diagrams/Uebersicht_Komponenten_und_Kommunikation.png "Übersicht der Komponenten und Kommunikation"

<!-- Footnotes -->
