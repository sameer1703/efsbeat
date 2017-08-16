# delete service if it already exists
if (Get-Service efsbeat -ErrorAction SilentlyContinue) {
  $service = Get-WmiObject -Class Win32_Service -Filter "name='efsbeat'"
  $service.StopService()
  Start-Sleep -s 1
  $service.delete()
}

$workdir = Split-Path $MyInvocation.MyCommand.Path

# create new service
New-Service -name efsbeat `
  -displayName efsbeat `
  -binaryPathName "`"$workdir\\efsbeat.exe`" -c `"$workdir\\efsbeat.yml`" -path.home `"$workdir`" -path.data `"C:\\ProgramData\\efsbeat`""
