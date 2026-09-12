@echo off
cd /d "%~dp0"
if not exist ".venv\Scripts\python.exe" (
  echo Primero instala el entorno siguiendo README.md.
  pause
  exit /b 1
)
echo Abre http://127.0.0.1:8000 en tu navegador.
".venv\Scripts\python.exe" -m mkdocs serve --dev-addr 127.0.0.1:8000
pause
