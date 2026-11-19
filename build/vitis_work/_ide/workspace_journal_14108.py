# 2026-11-12T16:41:07.652817900
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_work")

platform = client.create_platform_component(name = "platform",hw_design = "T:\release\tcp_led.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone")

platform = client.get_component(name="platform")
domain = platform.get_domain(name="standalone")

domain = platform.get_domain(name="standalone")

status = domain.set_lib(lib_name="lwip220")

status = domain.set_config(option = "lib", param = "lwip220_dhcp", value = "false", lib_name="lwip220")

status = platform.build()

comp = client.create_app_component(name="tcp_led",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone",template = "lwip_echo_server")

