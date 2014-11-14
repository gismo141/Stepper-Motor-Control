# Planung des Projekts

In das Gantt-Diagramm in Abbildung \ref{fig:gantt} wurden die gewonnenen Erkenntnisse in Meilensteins 2 eingepflegt.
 
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

# Beschreibung der Anwendungsfälle

An den Anwendungsfällen wurden leichte strukturelle Änderungen aufgrund der Implementierung vorgenommen. Die zugrundeliegende Logik ist gleich geblieben.[^1] Zur Nachvollziehbarkeit ist das Anwendungsfalldiagramm in Abbildung \ref{fig:anwendungsfaelle} dargestellt.

![Anwendungsfälle\label{fig:anwendungsfaelle}][fig:anwendungsfaelle]

# Beschreibung und Darstellung der einzelnen Aktivitäten

Der Entwurf des Steuerprogramms wurde weitestgehend umgesetzt. Natürlich wurden kleinere Anpassungen während der Umsetzung vorgenommen. Genauere Informationen zur Funktionalität sind in der Dokumentation zum Meilenstein 1a zu finden.

## benötigte Tasks

Die benötigten Tasks wurden im Ablauf nicht geändert. In den folgenden Abschnitten werden die Änderungen einzeln benannt und erläutert. 

### Änderungen an der Heartbeat und Debug-Task

Es wurden gemäß Abbildung \ref{fig:heartbeat_debug} keine Änderungen im Diagramm vorgenommen.

### Änderungen an der User-Input-Task

Die User-Input-Task stellt gemäß Abbildung \ref{fig:user_input} die Haupttask der Steuersoftware dar. Die initialen Ausgaben des LC-Displays und des Terminals wurden aus der Main-Funktion in die User-Input-Task verlegt. Ebenfalls wurden die Event-Bezeichnungen angepasst, um eine Kontinuität im Gesamtprojekt zu ermöglichen.

### Änderungen an der User-Output-Task

In der User-Output-Task wurden gemäß Abbildung \ref{fig:user_output} die Anmerkungen zur gewünschten Ausgabe angepasst, um Deckungsgleichheit mit der Aufgabenstellung herzustellen.

## benötigte Interrupt-Service-Routinen

### Änderungen an der Key-ISR

In der Key-ISR wurden gemäß Abbildung \ref{fig:key_isr} die Event-Bezeichnungen angepasst, um eine Kontinuität im Gesamtprojekt zu ermöglichen.

### Änderungen an der Switch-ISR

Die Abfrage der Schalter in der `Switch-ISR` wurde gemäß Abbildung \ref{fig:switch_isr} vereinfacht. Das `Switch-Update-Flag` wurde eingespart. Stattdessen werden die aktuellen Schalterstellungen ausgelesen und per Mailbox an die User-Output-Task weitergeleitet.

### Änderungen an der Motor-ISR

In der Motor-ISR wurde gemäß Abbildung \ref{fig:motor_isr} die Abfrage, ob das `Interrupt-Enable`-Bit gesetzt ist, hinzugefügt, bevor das entsprechende Event gesendet wird. Des Weiteren wurde die Event-Bezeichnung angepasst.

## benötigte Funktionen

Grundsätzlich ist der Ablauf der Aktivitäten gleich geblieben. Es wurden einige Aktivitäten in Tasks verschoben, um einen homogeneren Ablauf zu ermöglichen. Auf eine eigene Init-Funktion wurde verzichtet und die Aktivitäten in die Main-Funktion sowie die User-Input-Task integriert.

### Änderungen an der Main-Funktion

Die Main-Funktion führt gemäß Abbildung \ref{fig:main} nun die nötigen Initialisierungen des Betriebssystems, der Tasks und ISRs durch. Der letzte Aufruf der Main-Funktion ist das Starten des Betriebssystems.

### Änderungen an der Init-Funktion

Auf die Implementierung einer eigenen Init-Funktion wurde verzichtet. Das Diagramm wird aus diesem Grund für die folgende Entwicklung nicht weiter betrachtet.

### Änderungen an der Heartbeat-Funktion

Es wurden gemäß Abbildung \ref{fig:heartbeat} keine Änderungen im Diagramm vorgenommen.

### Änderungen an der Chain of Steps-Funktion

Es wurden gemäß Abbildung \ref{fig:chain_of_steps} keine Änderungen im Diagramm vorgenommen.

### Änderungen an der Continuous Run-Funktion

Es wurden gemäß Abbildung \ref{fig:continuous_run} keine Änderungen im Diagramm vorgenommen.

# Darstellung der verschiedenen Aktivitätsdiagramme

![Heartbeat-Debug Task\label{fig:heartbeat_debug}][fig:heartbeat_debug]

![User-Input Task\label{fig:user_input}][fig:user_input]

![User-Output Task\label{fig:user_output}][fig:user_output]

![Key ISR\label{fig:key_isr}][fig:key_isr]

![Switch ISR\label{fig:switch_isr}][fig:switch_isr]

![Motor ISR\label{fig:motor_isr}][fig:motor_isr]

![Main Funktion\label{fig:main}][fig:main]

![Heartbeat Funktion\label{fig:heartbeat}][fig:heartbeat]

![Chain of Steps Funktion\label{fig:chain_of_steps}][fig:chain_of_steps]

![Continuous Run Funktion\label{fig:continuous_run}][fig:continuous_run]

# Weitere Darstellungen zur Erläuterung der internen Kommunikation

![Auflistung Betriebssystemkomponenten\label{fig:auflistung}][fig:auflistung]

![Übersicht der Komponenten und Kommunikation\label{fig:kommunikation}][fig:kommunikation]

<!-- Links -->

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

[^1]: Für weitere Details zur allgemeinen Implementierung wird auf die Dokumenation zu Meilenstein 1a verwiesen, da im Folgenden nur auf die Änderungen eingegangen wird.