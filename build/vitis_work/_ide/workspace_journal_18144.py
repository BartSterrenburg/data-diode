# 2026-11-12T16:50:20.938812700
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_work")

platform = client.get_component(name="platform")
domain = platform.get_domain(name="standalone")

comp = client.get_component(name="tcp_led")
comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["T:\build\vitis_work\tcp_led\src\fpga.c", "T:\build\vitis_work\tcp_led\src\command.c", "T:\build\vitis_work\tcp_led\src\tcp_server.c", "T:\build\vitis_work\tcp_led\src\vendor_xemacpsif_physpeed.c"])

comp.build()

