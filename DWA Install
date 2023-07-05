$FolderName = "C:\Installers"
if (Test-Path $FolderName) {
}
else
{
  
    #PowerShell Create directory if not exists
    New-Item $FolderName -ItemType Directory
    Write-Host "Folder Created successfully"
}
Invoke-WebRequest https://cf-dl.datto.com/dwa/DattoWindowsAgent.exe -OutFile C:\Installers\DattoWindowsAgent.exe
C:\Installers\DattoWindowsAgent.exe /quiet /norestart
