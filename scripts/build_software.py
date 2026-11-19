import os, subprocess, shutil
from pathlib import Path
import vitis
root=Path(os.environ.get('TCP_DEMO_ROOT', 'T:/'))
client=vitis.create_client()
try:
 client.set_workspace(str(root/'build'/'vitis_work'))
 platform=client.get_component(name='platform') if (root/'build'/'vitis_work'/'platform'/'vitis-comp.json').exists() else client.create_platform_component(name='platform', hw_design=str(root/'release'/'tcp_led.xsa'),os='standalone',cpu='ps7_cortexa9_0',domain_name='standalone')
 domain=platform.get_domain(name='standalone')
 if os.environ.get('TCP_APP_ONLY')!='1':
  if not (root/'build'/'vitis_work'/'platform'/'export'/'platform'/'platform.xpfm').exists():
   domain.set_lib('lwip220')
  domain.set_config('lib','lwip220_dhcp','true','lwip220')
  domain.set_config('lib','lwip220_lwip_dhcp_does_acd_check','true','lwip220')
  domain.set_config('lib','lwip220_pbuf_pool_size','2048','lwip220')
  domain.set_config('lib','XILTIMER_en_interval_timer','true','xiltimer')
  platform.build()
 app=client.get_component(name='tcp_led') if (root/'build'/'vitis_work'/'tcp_led'/'vitis-comp.json').exists() else client.create_app_component(name='tcp_led',platform=str(root/'build'/'vitis_work'/'platform'/'export'/'platform'/'platform.xpfm'),domain='standalone',template='lwip_echo_server')
 # Keep the licensed AMD platform/timer integration; replace only application logic.
 src=root/'build'/'vitis_work'/'tcp_led'/'src'
 for f in (root/'software').glob('*'):
  if f.suffix in ('.c','.h'): (src/f.name).write_bytes(f.read_bytes())
 # Echo server's own entry points are no longer used.
 (src/'echo.c').write_text('/* Replaced by tcp_server.c. */\n')
 # Template CMake collects sources through UserConfig.cmake; configure additional sources.
 app.set_app_config(key='USER_COMPILE_SOURCES',values=[str(src/x) for x in ['fpga.c','command.c','tcp_server.c','vendor_xemacpsif_physpeed.c']])
 status=app.build()
 print("APPLICATION_BUILD_STATUS",status)
 if str(status).upper() not in ("SUCCESS", "TRUE", "0"):
  raise RuntimeError(f"Application build returned {status}")
 elf=src.parent/"build"/"tcp_led.elf"
 if not elf.exists(): raise RuntimeError("Application build failed; no ELF")
 shutil.copy2(elf,root/"release"/"tcp_led.elf")
 nm=Path(os.environ["XILINX_VITIS"])/"gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-nm.exe"
 symbols=subprocess.check_output([str(nm),str(elf)],text=True)
 entries=[]
 for line in symbols.splitlines():
  fields=line.split()
  if len(fields)==3 and fields[2].startswith("diagnostic_"):
   entries.append(f"set {fields[2]} 0x{fields[0]}")
 (root/"release"/"diagnostic_symbols.tcl").write_text("\n".join(entries)+"\n")
finally:
 # Windows SDK stops its cmd wrapper but leaves Java and its workspace lock alive.
 # Stop only this script-owned server process tree.
 proc=client._serverObj.cp
 if proc is not None:
  subprocess.run(["taskkill","/PID",str(proc.pid),"/T","/F"],capture_output=True)
 vitis.dispose()
