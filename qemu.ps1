Add-Type -AssemblyName PresentationCore,PresentationFramework
$q1="SELECT * FROM Win32_DiskDrive"
$cmdOutput = Get-WmiObject -Query $q1
if(%{$cmdOutput.Caption -match "QEMU"}) {
   $msgBody="QEMU Detected"
}else {
   $msgBody="not in QEMU"
}
[System.Windows.MessageBox]::Show($msgBody)