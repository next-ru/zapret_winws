@echo off

chcp 65001 > nul

curl -s -f -o "%~dp0files\hostlist.txt" https://raw.githubusercontent.com/1andrevich/Re-filter-lists/refs/heads/main/domains_all.lst 2>nul
if %errorlevel% equ 0 (
    echo Файл со списком заблокированных доменов успешно загружен.
) else (
    echo Не удалось загрузить файл со списком заблокированных доменов.
)

curl -s -f -o "%~dp0files\ipset-discord.txt" https://raw.githubusercontent.com/bol-van/zapret-win-bundle/refs/heads/master/zapret-winws/files/ipset-discord.txt 2>nul
if %errorlevel% equ 0 (
    echo Файл со списком диапазонов IP-адресов Discord успешно загружен.
) else (
    echo Не удалось загрузить файл с диапазонами IP-адресов Discord.
)

pause