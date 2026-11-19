# Hardware review (R2.1 schematic, REV3.0 pin compatibility confirmed by owner)

- Official manual: https://github.com/MicroPhase/fpga-docs/blob/master/source/DEV_BOARD/Z7-NANO/Z7-NANO_Reference_Manual.md
- Schematic: https://github.com/MicroPhase/fpga-docs/blob/master/schematic/Z7-NANO_R21.pdf
- Local source: C:\Users\barts\Downloads\Z7-NANO_R21.pdf
- Sheet 2: PS crystal 33.333 MHz, E7. Bank 500 3.3 V; bank 501 1.8 V.
- PS GEM0: RGMII MIO16..27. MDC MIO52, MDIO MIO53. PHY reset MIO46, active low.
- Sheet 8: PS PHY RTL8211F U6, connector J2, address 1. Local 25 MHz crystal. RGMII I/O 1.8 V; strap resistors select TX/RX delay.
- DDR sheet 7: MT41K256M16, single 16-bit device, 512 MiB. Selected matching Vivado part preset, conservative 400 MHz DDR clock. Board trace delays are not supplied by the schematic; hardware memory tests are necessary and are not exhaustive DDR qualification.
- LED D3 uses GPIO1_17N = R14, active low; confirmed manual LED table and schematic sheets 5/10. PL bank is 3.3 V.
- New PL logic uses PS FCLK0 100 MHz, not external N18. proc_sys_reset supplies synchronized reset. AXI peripheral and LED registers share this clock; no custom CDC.

## Old project findings
Read-only inspected old BD and Vitis logs. Old BD selected Ethernet MDIO on EMIO, inconsistent with physical MIO52/53. Old bank 500 voltage selected 1.8 V, while sheet 2 supplies 3.3 V. Old DDR aperture was 256 MiB, board documentation says 512 MiB. Old application used 192.168.1.10 vs laptop wired interface currently 192.168.2.1.
Logs contain stale cable/device contexts, missing ARM target and DAP/APB errors. Other launches successfully reached an intentional `bpadd main` breakpoint. These are evidence of several possible startup issues, not proof that a single configuration caused all old failures.
New scripts select currently discovered target names and explicitly initialize PS, test memory, then download the application. No persistent boot medium is changed.
