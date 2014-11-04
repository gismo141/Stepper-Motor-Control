#TODO : Rechtschreib- und Formatierungsprüfung
#TODO : Aktualisierte Tabellen, Abbildungen und Diagramme einfügen
#TODO : Zeile 11

# Planung des Projekts

In das Gantt-Diagramm in Abbildung \ref{fig:gantt} wurden die Erkenntnisse, die während der Bearbeitung des Meilensteins 1 gemacht wurden, eingepflegt.
Dies ist hauptsächlich die längere Implementierungszeit des Meilensteins 1b, die durch die Komplexität der Basissoftware zu Stande kommt.
Zur Wahrung des Zeitpunktes der Fertigstellung des Gesamtprojekts mitte Dezember, wurde die Einarbeitung, das Design und die Zeitplanung von Meilenstein 2 nach vorne verschoben und läuft parallel zur Finalisierung des Meilenstein 1b.  

#TODO : Kapitel "Planung des Projekts" ab hier überarbeiten! 
Abbildung \ref{fig:projektplanung} zeigt den geplanten und benötigten Zeitaufwand für die Erstellung des Meilenstein 1b unterteilt in folgende Aufgabenbereiche:

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

An den Anwendungsfällen wurden leichte strukturelle Änderungen aufgrund der Implementierung vorgenommen. Die zugrunde liegende Logik ist allerdings gleich geblieben. Für weitere Details wird auf die Dokumenation zu Meilenstein 1a verwiesen.
Zur Vollständigkeit ist das Anwendungsfalldiagramm in Abbildung \ref{fig:anwendungsfaelle} noch einmal dargestellt.

![Anwendungsfälle\label{fig:anwendungsfaelle}][fig:anwendungsfaelle]

# Beschreibung der benötigten Tasks und Interrupt-Service-Routinen

Der Entwurf des Steuerprogramms wurde weitestgehend umgesetzt. Natürlich wurden kleinere Anpassungen während der Umsetzung vorgenommen. Genauere Informationen sind in der Dokumenation zum Meilenstein 1a zu finden.

## benötigte Tasks

Die benötigten Tasks haben sich logisch nicht geändert. Erwähnenswert ist nur die Änderung in der Heartbeat und Debug-Task: Hier wurde die Intervallzeit zum Auslösen des Motor-Interrupts auf 4 Sekunden korrigiert.

## benötigte Interrupt-Service-Routinen

Die Abfrage der Schalter in der `Switch-ISR` wurde vereinfacht. Das `Switch-Update-Flag` wurde eingespart, weil die Übermittlung der Schalterstellungen über eine Message-Queue auch die Möglichkeit einer Eventerzeugung bietet.

## Darstellung der Aktivitätsdiagramme

Die Aktivitätsdiagramm wurde überarbeitet und an den aktuellen Softwarestand angepasst. So sind einzelen Aktivitäten in andere Tasks verschoben worden. Grundsätzlich ist der Ablauf der Aktivitäten aber gleich geblieben.

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

[fig:key_isr]: ../Milestone_1a/Diagrams/Activities/ISRs/key_ISR.png "Key ISR"

[fig:switch_isr]: ../Milestone_1a/Diagrams/Activities/ISRs/switch_ISR.png "Switch ISR"

[fig:motor_isr]: ../Milestone_1a/Diagrams/Activities/ISRs/motor_ISR.png "Motor ISR"

[fig:chain_of_steps]: ../Milestone_1a/Diagrams/Activities/Functions/Chain-of-Steps.png "Chain of Steps Funktion"

[fig:continuous_run]: ../Milestone_1a/Diagrams/Activities/Functions/Continuous-Run.png "Continuous Run Funktion"

[fig:heartbeat]: ../Milestone_1a/Diagrams/Activities/Functions/Heartbeat.png "Heartbeat Funktion"

[fig:auflistung]: ../Milestone_1a/Diagrams/Auflistung_Betriebssystemkomponenten.png "Auflistung Betriebssystemkomponenten"

[fig:kommunikation]: ../Milestone_1a/Diagrams/Uebersicht_Komponenten_und_Kommunikation.png "Übersicht der Komponenten und Kommunikation"