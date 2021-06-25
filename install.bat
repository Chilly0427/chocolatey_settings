@echo off

echo Administrator check
openfiles > nul

if %errorlevel% neq 0 (
    pause
    exit
)

echo ===== Install Chocolatey =====
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
echo ===== Install Done =====

echo ===== Upgrade all package =====
choco upgrade all -y
echo ===== Upgrade Done =====

echo ==== Install Package =====
choco install -y git
choco install -y sdcard-formatter
choco install -y googlechrome
choco install -y python3
choco install -y adobereader
choco install -y firefox
choco install -y 7zip
choco install -y vlc
choco install -y microsoft-edge
choco install -y ccleaner
choco install -y zoom
choco install -y vscode
choco install -y thunderbird
choco install -y winscp.install
choco install -y winmerge
choco install -y tortoisegit
choco install -y brave
choco install -y vivaldi
choco install -y anaconda3
choco install -y keepasxc
choco install -y google-backup-and-sync
choco install -y libreoffice-fresh
echo ==== Install Package =====

pause
exit