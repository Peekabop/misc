@echo off


pause

@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%systemdrive%\chocolatey\bin
pause

call cinst -force firefox
call cinst -force gow
call cinst -force vim
echo "Programs Have Been Installed."
pause

cd %HOMEPATH%\Program Files (x86)\Mozilla Firefox
start firefox.exe
