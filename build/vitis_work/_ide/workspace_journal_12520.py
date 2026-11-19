# 2026-11-12T16:45:28.195587200
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_work")

platform = client.get_component(name="platform")
domain = platform.get_domain(name="standalone")

domain = platform.get_domain(name="standalone")

status = domain.set_config(option = "lib", param = "lwip220_dhcp", value = "true", lib_name="lwip220")

status = domain.set_config(option = "lib", param = "lwip220_lwip_dhcp_does_acd_check", value = "true", lib_name="lwip220")

status = domain.set_config(option = "lib", param = "lwip220_pbuf_pool_size", value = "2048", lib_name="lwip220")

status = domain.set_config(option = "lib", param = "XILTIMER_en_interval_timer", value = "true", lib_name="xiltimer")

status = platform.build()

comp = client.get_component(name="tcp_led")
comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["T:\build\vitis_work\tcp_led\src\fpga.c", "T:\build\vitis_work\tcp_led\src\command.c", "T:\build\vitis_work\tcp_led\src\tcp_server.c"])

comp.build()

