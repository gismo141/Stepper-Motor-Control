# Planung des Projekts

Zur zeitlichen Planung wird das Gantt-Diagramm gemäß Abbildung \ref{fig:gantt} verwendet. Es stellt die zeitliche Abfolge der einzelnen Aufgaben, sortiert nach Meilenstein über die Dauer des Praktikums dar. Die aufgelisteten Aufgabe unterteilen sich in weitere Unteraufgaben, die zur Wahrung der Anschaulichkeit nicht aufgelistet werden.

Abbildung \ref{fig:projektplanung} zeigt den geplanten und benötigten Zeitaufwand für die Erstellung des Meilenstein 1a unterteilt in folgende Aufgabenbereiche:

- Einarbeitung
- Zeitplanung
- Design
- Implementierung
- Verifikation
- Dokumentation

Die Darstellung wird gesondert für die Studenten Marc Kossmann und Michael Riedel betrachtet. Diese Zeiten sind unabhängig von gemeinsam bearbeiteten Aufgaben. Die Abbildung \ref{fig:zeitbedarf} zeigt die komplette geplante und benötigte Zeit, die durch Aufsummierung der einzelnen Meilensteine entsteht.

![Gantt-Diagramm zur kompletten Zeitplanung\label{fig:gantt}][fig:gantt]

![Projektplanung für Meilenstein 1a\label{fig:projektplanung}][fig:projektplanung]

![Zeitbedarfsübersicht für das gesamte Projekt\label{fig:zeitbedarf}][fig:zeitbedarf]

# Beschreibung der Anwendungsfälle

Gemäß Abbildung \ref{fig:anwendungsfaelle} hat der Anwender (dargestellt als *User*) die Möglichkeit, den Modus der Steuerung (*mode*), die Drehrichtung (*direction*) und die Drehgeschwindigkeit (*speed*) einzustellen, sowie den Motor zu starten und zu stoppen (*start/stop motor*).

![Anwendungsfälle\label{fig:anwendungsfaelle}][fig:anwendungsfaelle]

Der Anwender kann somit zwischen drei Modi wählen:

+ *Chain of Steps*:
    Dabei wird der Motor um eine fest angegebene Schrittweite mit gewählter Geschwindigkeit verfahren.

+ *Continuous Run*:
    Dabei verfährt der Motor mit vorher eingestellter Geschwindigkeit, bis er durch den Anwender gestoppt wird.

+ *Debugmode*:
    Im Debug-Modus wird in regelmäßigen Abständen der Motor bewegt, ein Interrupt ausgelöst und die Register verändert.

Entsprechend den Eingaben durch den Anwender, werden durch den NIOS II/s-Prozessor die Register verändert und der Motor entsprechend durch die *Motor-Control-Unit (MCU)* verfahren.

# Beschreibung der benötigten Tasks und Interrupt-Service-Routinen

Das Steuerprogramm zur Kontrolle des Schrittmotors reagiert auf Eingaben durch den Benutzer. Dies geschieht über verschiedene Schalter und Taster. Außerdem werden dem Benutzer während des Betriebs Informationen über ein LC-Display, eine *JTAG-UART Debug-Console* und LEDs angezeigt. Die Steuerung des Motors geschieht über eine eigene MCU, die anhand von in Registern abgelegten Informationen, bedient wird. Das Steuerprogramm und die MCU kommunizieren somit nur über die zur Verfügung stehenden Register und Interrupt-Leitungen.

## benötigte Tasks

Damit Aufgaben parallel abgearbeitet werden können, werden drei Tasks verwendet:

### Die Hauptsteuerung durch die User-Input-Task

Die "Main-Task" oder auch `User-Input-Task` stellt, gemäß Abbildung \ref{fig:user_input}, die höchste Kontrollinstanz dar. Nach der Initialisierung der Hardware, Interrupt-Service-Routinen (ISR) und der Ausgabe von Systeminformationen auf dem Display und in der *JTAG-UART Debug-Console* gemäß Abbildung \ref{fig:init}, reagiert die Steuersoftware des NIOS II/s-Prozessors auf eingehende Benutzereingaben. Anhand derer werden, wenn nicht gerade der Motor läuft, die entsprechenden Register verändert.

Wird der Taster `Key 0` zum Starten des Motors gedrückt, so wird ein letztes Mal der Modus überprüft, sodass die MCU mit den Informationen der Register den Schrittmotor bewegen kann. Während der Motor läuft, ist vom Steuerprogramm nur die Drehrichtung veränderbar. Natürlich lässt sich der Schrittmotor jederzeit anhalten.

### Die Ausgabe durch die User-Output-Task

Eine eigene `User-Output-Task` stellt, gemäß Abbildung \ref{fig:user_output} dem Benutzer Informationen zur Verfügung. Sie zeigt auf dem LC-Display neben der Programmversion, den Motormodus und Motorstatus an. Außerdem ist bei eingeschaltetem *Debug*-Modus dies kenntlich gemacht. Weil im Display nicht alle Informationen übersichtlich dargestellt werden können, werden zusätzlich die HEX-Anzeigen 0 bis 2 zur Anzeige der Drehrichtung, der Geschwindigkeit und es Modus benutzt.

Währenddessen werden in einem über die JTAG-UART-Schnittstelle angeschlossenen Terminal Meldungen dargestellt. Diese enthalten alle Inhalte der Register zur Kommunikation mit der MCU.

### Die Heartbeat und Debug-Task

Eine Forderung an die Steuersoftware ist die Anzeige eines *Heartbeats*. Damit lässt sich gemäß Abbildung \ref{fig:heartbeat_debug} jederzeit erkennen, ob der Prozessor noch in einem funktionsfähigen Betriebszustand ist. Dieser Heartbeat wird über eine eigene Task namens `Heartbeat-Task` erzeugt und auf der HEX-Anzeige 3 und der LED 9 durch einen Blinkcode dargestellt.

Wenn der *Debug-Schalter* auf `1` gestellt wurde, wird in der *Heartbeat*-Task alle 3 Sekunden ein Interrupt erzeugt, das dem Steuerprogramm das Anhalten des Motors signalisiert. Wenn das `Run-Bit` im Control-Register (`ctrlReg`) auf `1` gesetzt ist, sich der Schrittmotor also dreht, wird entsprechend der Drehrichtung das Register `stepsReg` zum zählen der Schritte verändert. So lässt sich das Programm ohne MCU testen.

## benötigte Interrupt-Service-Routinen

Um eine schnelle Interaktion mit der Schrittmotorsteuerung durch den Anwender zu ermöglichen, werden drei ISR verwendet:

### Die Abfrage der Taster

Damit eine Reaktion auf Benutzereingaben in Echtzeit möglich ist, werden die Taster gemäß Abbildung \ref{fig:key_isr} über eine `Key-ISR` ausgewertet. Sobald ein Taster gedrückt wurde, wird der Interrupt gesetzt und im *Interrupthandler* der Zustand der Taster abgefragt. Für den gedrückten Taster wird dann ein *Flag* an die Main-Task gesetzt.

### Die Abfrage der Schalter

Die `Switch-ISR` reagiert gemäß Abbildung \ref{fig:switch_isr} auf Änderungen der Schalterstellungen. Zur Einsparung von Flags werden die Schalter etwas anders ausgewertet. Bei Betätigung wird auch ein Interrupt ausgelöst, allerdings wird im *Interrupthandler* die Stellung aller Schalter in einer *MessageQueue*-Variable abgespeichert und anschließend nur ein `Switch-Update-Flag` an die Main-Task gesetzt. Diese muss dann die Schalterstellungen aus der Queue abholen.

### Die Abfrage der Motorsteuerung

Zu guter Letzt wird gemäß [Abbildung](fig:motor_isr) über die `Motor-ISR` das Stoppen des Motors in der 
`Chain of Steps`-Betriebsart signalisiert. Im *Interrupthandler* wird nur ein Flag an die Main-Task gesendet. Diese ISR ist mit dem `IR`-Bit des Control-Registers (`ctrlReg`) verbunden.

## Darstellung der Aktivitätsdiagramme

![Initialisierung der Hardware, ISR und Tasks\label{fig:init}][fig:init]

![User-Input Task\label{fig:user_input}][fig:user_input]

![User-Output Task\label{fig:user_output}][fig:user_output]

![Heartbeat-Debug Task\label{fig:heartbeat_debug}][fig:heartbeat_debug]

![Key ISR\label{fig:key_isr}][fig:key_isr]

![Switch ISR\label{fig:switch_isr}][fig:switch_isr]

![Motor ISR\label{fig:motor_isr}][fig:motor_isr]

![Chain of Steps Funktion\label{fig:chain_of_steps}][fig:chain_of_steps]

![Continuous Run Funktion\label{fig:continuous_run}][fig:continuous_run]

![Heartbeat Funktion\label{fig:heartbeat}][fig:heartbeat]

# Weitere Darstellungen zur Erläuterung der internen Kommunikation

![Auflistung Betriebssystemkomponenten\label{fig:auflistung}][fig:auflistung]

![Übersicht der Komponenten und Kommunikation\label{fig:kommunikation}][fig:kommunikation]

<!-- Links -->

[fig:gantt]: ../Planning/Gantt-Diagramm.png "Gantt-Diagramm zur kompletten Zeitplanung"

[fig:projektplanung]: ../Planning/Planung_Meilenstein1a.png "Projektplanung für Meilenstein 1a" 

[fig:zeitbedarf]: ../Planning/Zeitbedarf.png "Zeitbedarfsübersicht für das gesamte Projekt"

[fig:anwendungsfaelle]: ../Milestone_1a/Diagrams/UseCases.png "Anwendungsfälle"

[fig:init]: ../Milestone_1a/Diagrams/Activities/Functions/Init.png "Initialisierung der Hardware, ISR und Tasks"

[fig:user_input]: ../Milestone_1a/Diagrams/Activities/Tasks/User-Input.png "User-Input Task"

[fig:user_output]: ../Milestone_1a/Diagrams/Activities/Tasks/User-Output.png "User-Output Task"

[fig:heartbeat_debug]: ../Milestone_1a/Diagrams/Activities/Tasks/Heartbeat-Debug.png "Heartbeat/Debug Task"

[fig:key_isr]: ../Milestone_1a/Diagrams/Activities/ISR/key_ISR.png "Key ISR"

[fig:switch_isr]: ../Milestone_1a/Diagrams/Activities/ISR/switch_ISR.png "Switch ISR"

[fig:motor_isr]: ../Milestone_1a/Diagrams/Activities/ISR/motor_ISR.png "Motor ISR"

[fig:chain_of_steps]: ../Milestone_1a/Diagrams/Activities/Functions/Chain-of-Steps.png "Chain of Steps Funktion"

[fig:continuous_run]: ../Milestone_1a/Diagrams/Activities/Functions/Continuous-Run.png "Continuous Run Funktion"

[fig:heartbeat]: ../Milestone_1a/Diagrams/Activities/Functions/Heartbeat.png "Heartbeat Funktion"

[fig:auflistung]: ../Milestone_1a/Diagrams/Auflistung_Betriebssystemkomponenten.png "Auflistung Betriebssystemkomponenten"

[fig:kommunikation]: ../Milestone_1a/Diagrams/Uebersicht_Komponenten_und_Kommunikation.png "Übersicht der Komponenten und Kommunikation"