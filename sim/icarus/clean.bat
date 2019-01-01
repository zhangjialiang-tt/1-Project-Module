
@echo off
cd /d %~dp0
set work_root=%~dp0
echo "dev directory is :%work_root%"
rm *.log *.vcd *.vvp *.bin *.txt
