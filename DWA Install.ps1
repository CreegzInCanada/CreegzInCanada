$FolderName = "C:\Installers"
if (Test-Path $FolderName) {
}
else
{
    New-Item $FolderName -ItemType Directory
    Write-Host "Folder Created successfully"
}
Invoke-WebRequest https://cf-dl.datto.com/dwa/DattoWindowsAgent.exe -OutFile C:\Installers\DattoWindowsAgent.exe
C:\Installers\DattoWindowsAgent.exe /quiet /norestart
<# Remove /norestart from the above command to force a reboot immediately after the installation completes, which is very fast. #>
