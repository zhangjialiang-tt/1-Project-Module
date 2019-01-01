REM 1删除文件 

REM del命令参数说明 
REM /F            强制删除只读文件。 
REM /S            从所有子目录删除指定文件。 
REM /Q            安静模式。删除全局通配符时，不要求确认。 
REM /A            根据属性选择要删除的文件。
REM /AR、/AH、/AS、/AA分别表示删除只读、隐藏、系统、存档文件，
REM /A-R、/A-H、/A-S、 /A-A表示删除除只读、隐藏、系统、存档以外的文件。
REM 例如“DEL/AR *.*”表示删除当前目录下所有只读文件，“DEL/A-S *.*”表示删除当前目录下除系统文件以外的所有文件。
REM del /a /f /s desktop.ini 搜索当前目录下的所有子文件夹，并删除指定文件
REM 将直接删除本目录的temp 目录的所有文件，没有任务提示


REM 2删除目录

REM rd 的另外一个写法是rmdir

REM RD [/S] [/Q] [drive:]path

REM RMDIR [/S] [/Q] [drive:]path 

REM /S 除目录本身外，还将删除指定目录下的所有文件。用于删除目录树。 
REM /Q 安静模式，带 /S 删除目录树时不要求确认

REM del *.bak
REM del *.wlf
REM del *.ini

rd /s /q .\..\dev\db

cd .\..\dev\output_files\
del /s /q *.bak
del /s /q *.rpt
del /s /q *.summary

pause
