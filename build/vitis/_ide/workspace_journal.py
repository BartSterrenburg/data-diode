# 2026-11-12T16:40:04.424723800
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../../release/tcp_led.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone")

vitis.dispose()

