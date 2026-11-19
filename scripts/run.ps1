param([ValidateSet('hardware','software','simulation','program','test')][string]$Action='test')
$ErrorActionPreference='Stop'
$demoRoot=Split-Path $PSScriptRoot -Parent
$toolsRoot='C:\AMDDesignTools\2026.1'
Push-Location $demoRoot
try {
 switch($Action) {
  hardware { & "$toolsRoot\Vivado\bin\vivado.bat" -mode batch -source scripts\build.tcl -log reports\vivado.log -journal reports\vivado.jou }
  simulation { & "$toolsRoot\Vivado\bin\vivado.bat" -mode batch -source scripts\simulate.tcl -log reports\simulation.log -journal reports\simulation.jou }
  software {
   # Vitis 2026.1 on Windows requires a short path without spaces here.
   $mapping=(subst | Where-Object { $_ -match '^T:\\:' } | Out-String)
   if(Test-Path T:\) {
    if($mapping -notmatch [regex]::Escape($demoRoot)) {throw 'T: is bezet. Kies een andere vrije stationsletter en pas TCP_DEMO_ROOT aan.'}
   } else {subst T: $demoRoot}
   $env:TCP_DEMO_ROOT='T:/'
   $env:PYTHONUNBUFFERED='1'
   & "$toolsRoot\Vitis\bin\vitis.bat" -s T:\scripts\build_software.py
  }
  program { & "$toolsRoot\Vitis\bin\xsdb.bat" scripts\program.tcl }
  test { python client.py --test }
 }
 if($LASTEXITCODE -ne 0) {throw "Actie mislukt: exitcode $LASTEXITCODE"}
} finally {Pop-Location}
