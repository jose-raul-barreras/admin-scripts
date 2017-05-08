# Create temp directory
New-Item c:\temp -type directory -Force

$wc=new-object system.net.webclient
$wc.UseDefaultCredentials = $true
$wc.downloadfile("https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/upgrade_to_ps3.ps1","c:\temp\upgrade_to_ps3.ps1")
iex powershell "c:\temp\upgrade_to_ps3.ps1"
