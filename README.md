# TCP via PS ETH naar FPGA-LED D3

Deze demo gebruikt de ARM-processor voor TCP en eigen VHDL in de Programmable Logic voor de LED. De oude UDP-demo en oude Vivado/Vitis-projecten zijn niet aangepast.

## Werking

Laptop â†’ PS ETH-aansluiting en PHY â†’ PS Ethernet-controller â†’ ARM met bare-metal lwIP â†’ AXI-registers â†’ VHDL â†’ D3.

Na een commando leest de ARM de verwerkingsteller, busy-status en LED-status terug. Pas als de FPGA de gewenste toestand heeft verwerkt, volgt het TCP-antwoord. Dat bevestigt digitale aansturing, geen optische meting van de LED.
Zie architecture.svg, REGISTERS.md en reference/BOARD_REVIEW.md.

## Aansluiten en starten

1. Voed het board zoals bij de werkende demo. Sluit USB-JTAG aan op de laptop.
2. Sluit Ethernet rechtstreeks aan tussen laptop en **PS ETH**. De PL ETH-aansluiting wordt in deze demo niet gebruikt.
3. Er is geen USB-UART nodig. Diagnosestatus is via JTAG te lezen. Een optionele UART kan aanvullende AMD-driverberichten tonen.
4. Laptop Ethernet is tijdens ontwikkeling 192.168.2.1/24. Board gebruikt 192.168.2.2/24, TCP-poort 5001, geen gateway. Wi-Fi gebruikt 192.168.1.0/24. Er is geen laptopnetwerkconfiguratie gewijzigd.
5. Open PowerShell in deze map:

```powershell
cd 'C:\Users\barts\Documents\ChatGPT\Project Data-diode\tcp_ps_pl_led_demo'
.\scripts\run.ps1 program
python .\client.py
```

Wacht na programmeren enkele seconden op Ethernet-autonegotiatie. Typ `LED 1`, `LED 0` of `STATUS`, telkens gevolgd door Enter. `quit` sluit de client. Controleer zichtbaar of D3 aan/uit gaat.

Los commando of automatische test:

```powershell
python .\client.py LED 1
python .\client.py STATUS
python .\client.py --test
```

De programmeerstap voert een systeemreset uit, laadt de bitstream, initialiseert de PS met het bijbehorende ps7_init.tcl, laadt de ELF en start de ARM zonder breakpoint op main. Dit is tijdelijk: geen flash of SD wordt beschreven. Na spanningsverlies opnieuw via JTAG laden. Bij foutieve bootsoftware kan J1 in JTAG-bootstand en een spanningscyclus nodig zijn; raadpleeg de bootmodetabel in de handleiding, verplaats geen jumper onder spanning.

## Protocol

ASCII, hoofdlettergevoelig, regel afgesloten met LF; CRLF is ook toegestaan. Geen begroeting bij verbinden. EÃ©n actieve TCP-client; een tweede wordt geweigerd met verbindingsreset. Bestaande verbinding blijft actief.

| Versturen | Antwoord |
|---|---|
| `LED 1\n` | `OK LED 1\n` |
| `LED 0\n` | `OK LED 0\n` |
| `STATUS\n` | `OK STATUS LED 0 SEQ 2 VERSION 00010000\n` (waarden variÃ«ren) |
| Onbekend commando | `ERR COMMAND\n` |
| Meer dan 63 tekens vÃ³Ã³r LF | `ERR TOO_LONG\n` |
| Ongeldig ASCII/control-teken | `ERR CHARACTER\n` |
| FPGA reageert niet binnen 10 ms | `ERR FPGA_TIMEOUT\n` |

Een TCP-ontvangst is geen compleet bericht: de server verzamelt tot LF. Incomplete invoer blijft bewaard; meerdere regels worden na elkaar verwerkt. Te lange invoer wordt tot de volgende LF weggegooid en veroorzaakt Ã©Ã©n foutmelding. RX/TX-buffers zijn begrensd; als antwoorden niet worden opgehaald, remt TCP de invoer. Een verbroken verbinding wist gedeeltelijke invoer. Geen authenticatie of encryptie: alleen bedoeld voor de directe testverbinding.

## Zelf bouwen

Benodigd: Vivado en Vitis 2026.1 inclusief Zynq-7000 en bare-metal ARM-ondersteuning. Hier geÃ¯nstalleerd onder C:\AMDDesignTools\2026.1. Python 3 voor client.

```powershell
.\scripts\run.ps1 simulation
.\scripts\run.ps1 hardware
.\scripts\run.ps1 software
.\scripts\run.ps1 program
.\scripts\run.ps1 test
```

Hardwarebouw maakt het Vivado-project in build/vivado. Softwarebouw gebruikt build/vitis_work en een tijdelijke Windows `subst T:`-alias naar deze projectmap om lange paden/spaties te vermijden. Dit kopieert/verplaatst geen projectdata. Sluit Vitis bij herbouwen. De buildscript-workaround beÃ«indigt alleen de eigen Vitis-serverprocesboom, omdat de Windows SDK anders een Java-proces met werkmapvergrendeling achterlaat.

De applicatie gebruikt het ondersteunde lwIP-echo-template voor BSP/platform/timer-integratie. De echo-afhandeling wordt vervangen door eigen servercode. Het template verlangt DHCP-bibliotheekondersteuning, maar de applicatie start geen DHCP en gebruikt vaste adressen.

Release: tcp_led.bit, tcp_led.xsa, ps7_init.tcl, tcp_led.elf. Bouwlogs en testresultaten staan in reports. Na hardwarewijzigingen moet ook het Vitis-platform met de nieuwe XSA worden bijgewerkt; gebruik voor een volledig nieuwe configuratie een nieuwe buildwerkmap, niet een verouderde platformexport.

## Uitbreiden en uiteindelijke data-diode

- software/tcp_server.c: TCP-bytestroom, buffers en verbindingen.
- software/command.c: tekstcommando's en antwoorden.
- software/fpga.c: registertoegang en bevestigingstimeout.
- rtl/led_registers.vhd: AXI4-Lite, commandoverwerking, status en LED.

Een volgende stap kan commando's met lengte/volgnummer en payload toevoegen. Voor grotere blokken is een FIFO nuttig; voor hoge doorvoer DMA en geheugenbuffers. TCP vereist flow-control en buffering bij een tragere uitgang. Deze LED-demo meet geen gigabitdoorvoer.

Het latere systeem krijgt TCP aan de netwerkkant en UDP aan de beveiligde kant via PL ETH. Dit ontwerp is nog geen bewezen scheidingsgrens. De huidige statusrichting PLâ†’PS is bewust toegestaan voor de demo en moet bij het uiteindelijke ontwerp opnieuw worden beoordeeld. Ook CPU-toegang tot registers, geheugen, FPGA-configuratie en gedeelde besturing moet worden meegenomen. TCP-bevestiging aan de netwerklaptop is geen bewijs dat gegevens aan de beveiligde kant zijn aangekomen.

## Diagnose via JTAG

```powershell
& 'C:\AMDDesignTools\2026.1\Vitis\bin\xsdb.bat' .\scripts\diagnose.tcl
```

Dit onderbreekt de ARM kort en hervat hem daarna. Stage 1 = main/init, 2 = PHY-reset voorbereiden, 3 = netwerk initialiseren, 4 = TCP starten, 5 = server draait. 0xE001 t/m 0xE004 zijn foutstadia. Heartbeat moet tussen controles veranderen. Een breakpoint op main betekent dat de debugger de processor bewust heeft gestopt; gebruik de bijgeleverde programmeerstap voor automatisch doorlopen.

De meegeleverde AMD Realtek-snelheidsdetectie is lokaal aangepast voor PHY-ID 001c:c916. Zonder deze aanpassing was er wel een fysieke link maar geen werkende TCP-route. Zie PROVENANCE.md en reference/rtl8211f.patch.
