@echo off

SET "url=https://github.com/marcoslafoz/FuentesCrew/raw/master/FuentesCrew-mods.zip"
SET "output=.\FuentesCrew-mods.zip"

echo - - - - - - - - - - - - - - - - - - - - - - - - - - 
echo Descargando archivos, no cierres esta ventana
echo - - - - - - - - - - - - - - - - - - - - - - - - - - 
"Powershell.exe" "(New-Object System.Net.WebClient).DownloadFile(\"%url%\", \"%output%\")"
echo Archivos descargados correctamente
echo - - - - - - - - - - - - - - - - - - - - - - - - - - 
echo Descomprimiento archivos
echo - - - - - - - - - - - - - - - - - - - - - - - - - - 
powershell -command "Expand-Archive FuentesCrew-mods.zip FuentesCrew-mods"
echo - - - - - - - - - - - - - - - - - - - - - - - - - - 
echo Actualizando mods de Fuentes Crew
echo - - - - - - - - - - - - - - - - - - - - - - - - - - 
copy FuentesCrew-mods\*.jar %APPDATA%\.minecraft\mods\
cd %APPDATA%\.minecraft\mods\
echo - - - - - - - - - - - - - - - - - - - - - - - - - - 
echo Mods instalados: 
echo - - - - - - - - - - - - - - - - - - - - - - - - - - 
dir /b
echo - - - - - - - - - - - - - - - - - - - - - - - - - - 
echo @author: marcoslafoz
echo - - - - - - - - - - - - - - - - - - - - - - - - - - 
:End
pause
Exit /B 0