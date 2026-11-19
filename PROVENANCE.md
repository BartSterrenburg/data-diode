# Bestaande onderdelen en eigen uitwerking

**Ja, deze TCP-demo gebruikt een bestaande TCP/IP-stack: lwIP 2.2.0, via AMD lwip220 v1.4 uit Vitis 2026.1.** TCP is niet opnieuw in VHDL of C geïmplementeerd.

| Onderdeel | Herkomst en taak |
|---|---|
| ARM Cortex-A9, GEM Ethernet MAC, DDR-controller | Vaste hardware in Zynq PS |
| RTL8211F, RJ45, kristallen, DDR en LED | Bestaande componenten op Z7-Nano |
| processing_system7 5.5 | AMD Vivado-IP; configureert PS-hardware |
| AXI-interconnect/protocolconverter | AMD-IP; verbindt PS AXI3-master met AXI4-Lite-registers |
| proc_sys_reset | AMD-IP; gesynchroniseerde PL-reset |
| lwIP 2.2.0 / lwip220 v1.4 | Bestaande open-source TCP/IP-stack met AMD-port, Ethernet-netif en drivers; verzorgt ARP/IP/TCP, checksums, retransmissies, sequencing en flow-control |
| Bare-metal BSP, xiltimer, XGpioPs, Xil_In32/Out32 | AMD runtime/drivers; timerinterrupten, PHY-reset en registertoegang |
| platform.c en template-CMake | AMD lwIP-echo-template; gebruikt voor timer/platformintegratie, originele licentieteksten blijven bewaard in gegenereerd project |
| vendor_xemacpsif_physpeed.c | Kopie AMD-port met kleine projectspecifieke RTL8211F-fix; volledig origineel copyright/licentie behouden. Niet presenteren als volledig eigen geschreven driver |
| led_registers.vhd | Voor dit project door AI uitgewerkte VHDL: AXI-registerslave, LED-geheugen, busy en verwerkingsteller |
| fpga.c | Projectspecifieke driver met registercontrole en timeout |
| command.c | Projectspecifiek tekstprotocol en foutantwoorden |
| tcp_server.c | Projectspecifieke lwIP raw-API server, begrensde buffers, regelverwerking en één actieve client |
| main.c | Projectspecifieke opstart/netwerkconfiguratie, PHY-reset, JTAG-diagnosevariabelen; integreert bestaande API's |
| Testbench, bouwscripts, client en documentatie | Voor dit project door AI gemaakt en met genoemde controles geverifieerd |

De AMD-driverkopie komt uit:
`C:/AMDDesignTools/2026.1/Vitis/data/embeddedsw/ThirdParty/sw_services/lwip220_v1_4/src/lwip-2.2.0/contrib/ports/xilinx/netif/xemacpsif_physpeed.c`.
Alleen de RTL8211F-identificatie en uitlezing van het snelheidsregister zijn toegevoegd; andere PHY-routines blijven vendorcode. Het originele object uit de statische lwIP-library wordt hierdoor niet gebruikt voor die symbols. De installatie is niet veranderd.

Bronnen:
- https://github.com/MicroPhase/fpga-docs/blob/master/source/DEV_BOARD/Z7-NANO/Z7-NANO_Reference_Manual.md
- https://github.com/MicroPhase/fpga-docs/blob/master/schematic/Z7-NANO_R21.pdf
- https://github.com/Xilinx/embeddedsw/tree/master/ThirdParty/sw_services
- https://www.nongnu.org/lwip/2_1_x/raw_api.html (conceptuele uitleg raw callbacks; lokaal gebouwd met 2.2.0)
- https://github.com/torvalds/linux/blob/master/drivers/net/phy/realtek/realtek_main.c (registercontrole; geen Linux-code overgenomen)

Uitleg voor presentatie: de processor handelt het bestaande TCP-protocol af met lwIP. Eigen applicatiecode vertaalt regels naar registercommando's. Eigen VHDL voert het LED-commando uit en levert terugleesbare status. De server antwoordt pas na controle van die FPGA-status. Deze demonstratie bewijst communicatie en commandobevestiging, nog geen veilige eenrichtingsscheiding.
