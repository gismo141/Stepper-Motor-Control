# Stepper-Motor-Control with NIOS II/s and Cyclone IV/V - FPGA

**System on a Chip - HT-2014**

## Overview

This project is an example for a system-on-a-chip-design of a stepper-motor-control using the NIOS II/s Processor on the development boards from [terasIC](http://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&CategoryNo=163#Category165).

## Software

The following software is beeing used for the development:

- VHDL-Source-Management: [ModelSim - Starter Edition (14.0.2)](http://www.altera.com/products/software/quartus-ii/modelsim/qts-modelsim-index.html)
- C-Source-Management: [Eclipse](https://www.eclipse.org)
- Project-Management: [Quartus II - Web Edition (14.0.0)](http://www.altera.com/products/software/quartus-ii/web-edition/qts-we-index.html)

## Development

The development is devided into 4 so-called *milestones*:

##### 1. Basic Processor Development

a) [Design-Phase](Documentation/Milestone_1a/Meilenstein_1a.md):
  - UML-diagrams;
  - project-planning;
  - tasks-overview;
  - interrupt-service-routines;
  - listing of OS-components (events, mutexes, semaphores, message queues, etc).

b) NIOS II/s Base-Software without stepper-component:
  - Proof-of-Concept with working C-Sources
  - complete Doxygen-documentation

##### 2. NIOS II/s Base-Software with register-interface

- presenting the solution
    + show control-status (`ctrlReg`) on red-LEDs ([chapter 8.2.4]())
    + show speed-status (`speedReg`) on green-LEDs ([chapter 8.2.4]())
    + show steps-status (`stepsReg`) on NIOS-console (with changing values in debug-mode)
    + testing of the steppermotor-ISR by setting the `requestbit` every 4s
- development of VHDL-register-interface
    + listing and description of chosen desing-parameters
    + block-diagram of the register-interface showing all signals
    + Proof-of-Concept with working VHDL-Sources
    + available simulation-files

##### 3. Motor-Control-Unit

a) Idea of Design
  - block-diagram for every component
  - state-diagrams (if necessary)
  - textual representation of the design-idea

b) Isolated Control via DE0 / DE2 - Board-Switches
  - presenting the solution
      + metering of the important speedsteps 0, 1 and 7
      + qualitative presentation of every other speedsteps
      + demonstration of every usage-mode
  - Proof-of-Concept with working VHDL-Sources
  - available simulation-files

##### 4. Combined Solution

combining the motor-control-unit with the NIOS II/s Base-Software with register-interface

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