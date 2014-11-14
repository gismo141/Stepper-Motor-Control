# Planung des Projekts

Das Gantt-Diagramm in Abbildung \ref{fig:gantt} wurden auf eingetretene Verzögerungen angepasst, wobei die Deadline Mitte Dezember berücksichtigt wurde.
 
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

# Design Register-Interface Komponente

Aufgrund der geringen Komplexität diese Komponente wurde kein spezieller Designprozess wie z.B. in Meilenstein 1 durchlaufen.
Nach einer kurzen Einarbeitung in die Aufgabenstellung und unter Berücksichtigung der Erkenntnisse aus der Tutorial Komponente, wurde drt Quellcode direkt entworfen.
Anschließenden wurde das gewünschte Verhalten mithilfe einer Simulation in Modelsim verifiziert.

Abbildung \ref{fig:register_interface} zeigt die daraus entstandene Komponente, die jetzt in Quartus zur Verfügung steht.

![Block Diagramm des Register Interface\label{fig:register_interface}][fig:register_interface]

# Änderungen an der Steuersoftware

Weil es nur einen gültigen Informationsstand der Register und des Systemzustandes gibt, wurde die Interprozess-Kommunikation (IPC) zwischen UserInput- und UserOutput-Task angepasst.
Es wurde zur Übertragung der akutellen Registerinhalte und des Systemstatus eine Mailbox-Queue benutzt, die als FIFO-Speicher implementiert ist und somit einen Puffer darstellt.
Dieser Puffer ist für diese Art von Informationen nicht gewünscht, weil er die beiden Tasks zeitlich entkoppelt. Somit kann es vorkommen, dass die UserOutput-Task nicht mit nicht-aktuellen Daten arbeitet.
Aufgrund dieser Problematik wird jetzt zur IPC eine globale Variable mit Mutex-Schutz benutzt.

Zugunsten der Übersichtlichkeit wurden alle eigens eingeführten Datentypen in einer Datei (dataTypes.h) zusammengefasst.

Wie für diesen Meilenstein verlangt wird jetzt auf die tatsächlichen in der "Register Interface" VHDL-Komponente befindlichen Register zugegriffen.
Dazu wurden Zugriffs-Makros eingeführt und die zugehörigen Zugriffsfunktionen in der Datei "registerAcces.h" angepasst.

# Weitere Darstellungen zur Erläuterung der internen Kommunikation

![Auflistung Betriebssystemkomponenten\label{fig:auflistung}][fig:auflistung]

![Übersicht der Komponenten und Kommunikation\label{fig:kommunikation}][fig:kommunikation]

<!-- Links -->

[fig:register_interface]: ../Milestone_2/Diagrams/block_diagramm-register_interface.png "Block Diagramm - Register Interface"

[fig:gantt]: ../Planning/Gantt-Diagramm.png "Gantt-Diagramm zur kompletten Zeitplanung"

[fig:projektplanung]: ../Planning/Planung_Meilenstein1b.png "Projektplanung für Meilenstein 2" 

[fig:zeitbedarf]: ../Planning/Zeitbedarf.png "Zeitbedarfsübersicht für das gesamte Projekt"

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
