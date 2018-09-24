$box = Get-ItemProperty -Path HKLM:SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName -Name "ComputerName"
$box = $box.ComputerName.ToString().ToLower()

if ($env:COMPUTERNAME -imatch 'vagrant') {

  Write-Host 'Hostname is still the original one, skip provisioning for reboot'

  Write-Host 'Install bginfo'
  . c:\vagrant\shell\InstallBGInfo.ps1

  Write-Host -fore red 'Hint: vagrant reload' $box '--provision'

} else {

  Write-Host -fore green "Ready for provisioning..."

  if (!(Test-Path 'c:\Program Files\sysinternals\bginfo.exe')) {
    Write-Host 'Install bginfo'
    . c:\vagrant\shell\InstallBGInfo.ps1
  }

  $script = "c:\vagrant\chocolatey.server\scripts\Provision-" + $box + ".ps1"
  . $script

  . c:\vagrant\shell\NotifyGuiAppsOfEnvironmentChanges.ps1
}
