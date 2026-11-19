# Controlerapport — 12 november 2026

Board: MicroPhase Z7-Nano REV3.0, XC7Z020-2CLG400. R2.1-pincompatibiliteit door eigenaar bevestigd via leverancier. Tools: Vivado en Vitis 2026.1; Windows; USB-JTAG. Bestaande projecten zijn uitsluitend gelezen.

| Controle | Resultaat / bewijs |
|---|---|
| Officiële boarddocumentatie en lokaal schema | Gecontroleerd; reference/BOARD_REVIEW.md |
| RTL-simulatie in Vivado XSim | PASS: reset, LED, teller, AW/W in beide volgordes, AXI-backpressure, ongeldige waarden/adressen, gedeeltelijke writes, reset met half ontvangen transactie. reports/simulation.log |
| Synthese en implementatie | Geslaagd, xc7z020clg400-2 |
| Timing | WNS +4,711 ns, WHS +0,089 ns, geen falende interne eindpunten. reports/timing.rpt |
| DRC | Geen overtredingen. reports/drc.rpt |
| Bitstream/XSA | Gegenereerd, release/tcp_led.bit en tcp_led.xsa |
| PL-gebruik | 435 LUTs, 607 registers, geen BRAM/DSP. reports/utilization.rpt |
| ARM/BSP/lwIP compilatie | Geslaagd, ELF beschikbaar. reports/software_build.log |
| DDR via JTAG | Vier patronen op vier adressen verspreid over 512 MiB gelezen/geschreven, PASS. Geen volledige geheugen-/temperatuurkwalificatie. reports/hardware_probe.log |
| PS→PL registertoegang op board | Versie 0x00010000, LED 0/1 en teller 0/1/2 correct via JTAG |
| ARM JTAG-opstart | Drie opeenvolgende systeemresets, bitstream/PS-init/ELF/start en volledige TCP-test geslaagd. reports/program_cycle_1..3.log |
| Ethernet | PS PHY ID 001c:c916, adres 1. Laptop link 1 Gbps; ARP MAC 02:5a:37:02:00:02. Geen throughputmeting |
| TCP LED aan/uit en status | Geslaagd na iedere opstart |
| Gesplitste / gebundelde regels | Geslaagd |
| Ongeldig commando, nulbyte, te lange regel | Correct foutantwoord; verbinding blijft bruikbaar |
| 200 commando's na elkaar | Geslaagd per cyclus |
| 3.000 gebundelde commando's | Alle antwoorden correct en FPGA-teller exact +3.000, in elk van drie cycli |
| Tweede gelijktijdige client | Geweigerd; eerste verbinding blijft werken |
| Verbinding verbreken en herstellen | Geslaagd, inclusief gedeeltelijk ontvangen commando |
| TCP half-close | Laatste antwoord ontvangen, daarna nette sluiting |
| Onafhankelijke statuscontrole | Na TCP LED 1 ook via JTAG command=1, LED_STATE=1, COMPLETED=3210; ARM diagnostic_stage=5. reports/final_jtag_status.log |

Details van de drie complete testcycli: reports/hardware_cycle_1.log, hardware_cycle_2.log, hardware_cycle_3.log. Iedere cyclus eindigde op teller 3209 en LED uit. Daarna is LED 1 gestuurd voor de zichtcontrole.

## Gevonden en verholpen

1. Oude configuratie gebruikte EMIO voor PHY-MDIO; board gebruikt MIO52/53. Nieuwe hardware correct geconfigureerd.
2. Oude PS-bank0-voltage 1,8 V; schema 3,3 V. Nieuwe preset gecorrigeerd.
3. Vitis Windows-padproblemen met spaties/lengte: korte T:-alias naar uitsluitend nieuwe projectmap.
4. Vitis CLI laat Java-serverproces achter; buildscript ruimt alleen eigen procesboom op.
5. AMD lwIP Realtek-snelheidsroutine gebruikt register 17. RTL8211F ID c916 gebruikt register 26 met andere bitvelden. Eerste netwerkpoging faalde; na lokale driveraanpassing slagen alle tests. Installatie/BSP-origineel is niet aangepast; eigen kopie van het AMD-bronbestand wordt in applicatie gelinkt. Diff: reference/rtl8211f.patch.
6. Eerste probes bevatten een decimaal/hex-conversiefout en ontbraken aan XSDB-geheugenkaart; de testscripts zijn gecorrigeerd, succesvolle nieuwe resultaten zijn opgeslagen.

## Grenzen en nog niet uitgevoerd

- Zichtbare D3-werking: gebruiker bevestigt dat D3 zichtbaar brandt na het TCP-commando LED 1. De zichtbare uit-toestand is nog niet afzonderlijk door de gebruiker bevestigd.
- Geen fysiek uit/aan van voeding uitgevoerd: drie JTAG-systeemresets getest. Opstarten vanaf flash/SD is buiten scope en niet gewijzigd.
- Geen foutinjectie van een vastgelopen FPGA/AXI-bus: timeoutcode aanwezig, geen hardware-timeoutscenario opgewekt. Een blokkerende AXI-transactie kan de softwaretimeout zelf blokkeren; zie REGISTERS.md.
- Geen kabel-uittrek/herinsteektest, langdurige duurtest, authenticatie, encryptie of gigabitdoorvoertest.
- Timingrapport meldt één uitgang zonder externe outputdelay: LED D3. Dit is een menselijke indicator zonder externe klok/timingcontract. Geen onbegrensde interne registerpaden.
- Geen beveiligingsclaim of gecertificeerde data-diode. PL ETH/UDP-uitgang en definitieve scheidingsgrens zijn nog niet geïmplementeerd.
- Vendor-BSP/FSBL geeft enkele bestaande compilerwaarschuwingen; projectspecifieke applicatiecompile in laatste build zonder waarschuwingen.

Geen aanvullende fysieke componenten waren voor deze tussenstap nodig. Geen USB-UART gebruikt. Geen laptopnetwerkinstellingen, flash, SD of bestaande projectbestanden gewijzigd.

Aanvullende reproduceerbaarheidscontrole: software opnieuw gebouwd via scripts/run.ps1 software (app-only), geslaagd. SHA-256 van ELF en bitstream onveranderd ten opzichte van de hardwaregeteste bestanden. Zie reports/rebuild_check.log en release_manifest.json. Laatste live TCP-status: LED 1, SEQ 3210, VERSION 00010000.

