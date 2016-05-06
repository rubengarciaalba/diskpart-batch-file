@echo off

CHOICE /C 12 /M "Seleccione 1 ocultar y 2 para mostrar."
IF errorlevel 2 GOTO show
IF errorlevel 1 GOTO hide

:hide
echo "Voy a ocultar la particion"
DISKPART /s C:\Users\ruben\desktop\hide.txt
GOTO end


:show
echo "Voy a mostrar la particion"
DISKPART /s C:\Users\ruben\desktop\show.txt
GOTO end

:end
PAUSE