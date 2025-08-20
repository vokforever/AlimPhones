@echo off
rem Устанавливаем кодировку UTF-8 для правильного отображения кириллицы
chcp 65001 > nul

title Обработчик телефонных номеров

echo.
echo Запуск скрипта для обработки телефонных номеров...
echo.

rem Переходим в директорию, где находится сам .bat файл
cd /d "%~dp0"

rem ПРОВЕРЯЕМ, СУЩЕСТВУЕТ ЛИ ВИРТУАЛЬНАЯ СРЕДА
if not exist ".venv\Scripts\python.exe" (
    echo ОШИБКА: Не найден Python в виртуальной среде .venv!
    echo Убедитесь, что папка .venv находится здесь же.
    goto :end
)

echo Использую Python из виртуальной среды .venv...
rem ЗАПУСКАЕМ СКРИПТ, ИСПОЛЬЗУЯ PYTHON ИЗ .VENV
".venv\Scripts\python.exe" main.py

:end
echo.
echo Работа скрипта завершена.
pause