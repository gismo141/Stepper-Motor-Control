---
documentclass: scrbook
classoption: |
    fontsize=12pt
    , paper=a4
    , twoside=false
    , DIV12
    , BCOR=1cm
    , numbers=enddot
    , listof=totoc
    , bibliography=totoc
    , index=totoc
    , headings=small
    , headlines=1.5
    , final
geometry: |
    top=2.5cm
    , left=2.5cm
    , right=2.5cm
    , bottom=2cm
    , includehead
    , a4paper
lang: ngerman
title: Meilenstein 1a - Beschreibung der kompletten Steuersoftware
subtitle: System on a Chip - Schrittmotorsteuerung mit NIOS II/s
author: Marc Kossmann und Michael Riedel, Gruppe 04
biblio-title: Literaturverzeichnis
linkcolor: black
citecolor: black
urlcolor: black
header-includes: ../../Additions/Input
include-before: ../../Additions/Titelseite
include-after:
figures: true
listings: false
tables: false
...

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

\begin{figure}
\begin{center}
\includegraphics[scale=.3,angle=90]{../../Planning/Gantt-Diagramm.png}
\end{center}
\caption{Gantt-Diagramm zur kompletten Zeitplanung}
\label{fig:gantt}
\end{figure}

![Projektplanung für Meilenstein 1a\label{fig:projektplanung}](../../Planning/Planung_Meilenstein1a.pdf)

![Zeitbedarfsübersicht für das gesamte Projekt\label{fig:zeitbedarf}](../../Planning/Zeitbedarf.pdf)

\newpage

# Beschreibung der Anwendungsfälle

Gemäß Abbildung \ref{fig:anwendungsfaelle} hat der Anwender (dargestellt als *User*) die Möglichkeit, den Modus der Steuerung (*mode*), die Drehrichtung (*direction*) und die Drehgeschwindigkeit (*speed*) einzustellen, sowie den Motor zu starten und zu stoppen (*start/stop motor*).

![Anwendungsfälle\label{fig:anwendungsfaelle}](../Diagrams/UseCases.pdf)

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

Zu guter Letzt wird gemäß Abbildung \ref{fig:motor_isr} über die `Motor-ISR` das Stoppen des Motors in der 
`Chain of Steps`-Betriebsart signalisiert. Im *Interrupthandler* wird nur ein Flag an die Main-Task gesendet. Diese ISR ist mit dem `IR`-Bit des Control-Registers (`ctrlReg`) verbunden.

## Darstellung der Aktivitätsdiagramme

![Initialisierung der Hardware, ISR und Tasks\label{fig:init}](../Diagrams/Activities/Functions/Init.pdf)

![User-Input Task\label{fig:user_input}](../Diagrams/Activities/Tasks/User-Input.pdf)

![User-Output Task\label{fig:user_output}](../Diagrams/Activities/Tasks/User-Output.pdf)

![Heartbeat-Debug Task\label{fig:heartbeat_debug}](../Diagrams/Activities/Tasks/Heartbeat-Debug.pdf)

\newpage

![Key ISR\label{fig:key_isr}](../Diagrams/Activities/ISR/key_ISR.pdf)

![Switch ISR\label{fig:switch_isr}](../Diagrams/Activities/ISR/switch_ISR.pdf)

![Motor ISR\label{fig:motor_isr}](../Diagrams/Activities/ISR/motor_ISR.pdf)

\newpage

![Chain of Steps Funktion\label{fig:chain_of_steps}](../Diagrams/Activities/Functions/Chain-of-Steps.pdf)

![Continuous Run Funktion\label{fig:continuous_run}](../Diagrams/Activities/Functions/Continuous-Run.pdf)

![Heartbeat Funktion\label{fig:heartbeat}](../Diagrams/Activities/Functions/Heartbeat.pdf)

\newpage

# Weitere Darstellungen zur Erläuterung der internen Kommunikation

![Auflistung Betriebssystemkomponenten\label{fig:auflistung}](../Diagrams/Auflistung_Betriebssystemkomponenten.pdf)

![Übersicht der Komponenten und Kommunikation\label{fig:kommunikation}](../Diagrams/Uebersicht_Komponenten_und_Kommunikation.pdf)

\newpage