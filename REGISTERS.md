# Registerinterface, basisadres 0x40000000

32-bit AXI4-Lite via PS M_AXI_GP0 en AMD AXI-interconnect/protocolconverter.

| Offset | Naam | Toegang | Betekenis |
|---|---|---|---|
| 0x00 | VERSION | R | 0x00010000: versie 1.0 |
| 0x04 | COMMAND | RW | Schrijf volledig 32-bit woord 0 of 1; lees laatst geaccepteerd commando |
| 0x08 | STATUS | R | bit 0 busy; bit 1 ready (buiten reset) |
| 0x0C | LED_STATE | R | bit 0: 1 = LED aangestuurd als aan |
| 0x10 | COMPLETED | R | Teller van uitgevoerde commando's; modulo 2^32 |

Een geaccepteerd commando wordt de volgende klokcyclus verwerkt. LED_STATE en COMPLETED veranderen op dezelfde klokflank. Ook herhaald schrijven van dezelfde LED-waarde verhoogt de teller. De software bewaart de oude teller en accepteert alleen de volgende tellerwaarde, busy=0 en de gewenste LED-status. Timeout: 10 ms zolang de AXI-bus zelf blijft reageren. Een volledig vastgelopen AXI-bus kan een CPU-load blokkeren; een softwaretimeout alleen beschermt daar niet tegen.

Andere adressen, gedeeltelijke writes en waarden groter dan 1 geven AXI SLVERR en wijzigen geen LED/teller. Alleen de voorgeschreven registers mogen door de bare-metal driver worden beschreven; ongeldige AXI-toegang kan een ARM data-abort veroorzaken.

Reset wist commando, LED, teller en openstaande AXI-transacties. D3-uitgang wordt hoog (uit). Alle registers draaien op dezelfde 100 MHz PS FCLK0. Reset wordt gesynchroniseerd door AMD proc_sys_reset. Er is geen eigen klokdomeinovergang.

Deze interface is bedoeld voor besturing. Voor blokken data: FIFO, lengte/volgnummer en foutstatus toevoegen; voor hoge doorvoer AXI DMA plus buffers en zorgvuldig cachebeheer. Een geslaagde LED-test bewijst geen gigabitdoorvoer.
