@echo off

py -m venv .
cd Scripts
call activate

pip install django

pause