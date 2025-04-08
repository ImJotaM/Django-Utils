@echo off

cd Scripts

set /p project_name=Enter project name: 

if not exist ..\projects (
    mkdir ..\projects
)

if exist ..\projects\%project_name% (
    echo You already have a project with this name.
) else (

    mkdir ..\projects\%project_name%

    call activate
    
    django-admin startproject %project_name% ..\projects\%project_name%

    xcopy /q .\activate.bat .\projects\%project_name%

)