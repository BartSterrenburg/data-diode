# 2026-11-12T16:43:22.100465200
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_work")

platform = client.get_component(name="platform")
domain = platform.get_domain(name="standalone")

domain = platform.get_domain(name="standalone")

status = domain.set_lib(lib_name="lwip220")

