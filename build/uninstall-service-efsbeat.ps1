# delete service if it exists
if (Get-Service efsbeat -ErrorAction SilentlyContinue) {
  $service = Get-WmiObject -Class Win32_Service -Filter "name='efsbeat'"
  $service.delete()
}
