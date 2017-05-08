# Create temp directory
New-Item c:\temp -type directory -Force

$wc=new-object system.net.webclient
$wc.UseDefaultCredentials = $true
$wc.downloadfile("https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/upgrade_to_ps3.ps1","c:\temp\upgrade_to_ps3.ps1")
$wc.downloadfile("https://github.com/ansible/ansible/blob/devel/examples/scripts/ConfigureRemotingForAnsible.ps1","c:\temp\ConfigureRemotingForAnsible.ps1")
iex powershell "c:\temp\upgrade_to_ps3.ps1"
iex powershell "c:\temp\ConfigureRemotingForAnsible.ps1"
