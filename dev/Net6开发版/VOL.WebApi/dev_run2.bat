@echo off
SET LOG_FILE=error.log

REM 将命令保存到临时批处理文件
echo dotnet watch --no-hot-reload > tmp.bat

REM 使用 cmd.exe Execute临时批处理文件
cmd /k tmp.bat

REM 检查命令Result
IF %ERRORLEVEL% NEQ 0 (
    echo "出现异常，请View错误Log：%LOG_FILE%"
    echo "出现异常，请View错误Log：%LOG_FILE%" >> %LOG_FILE%
    pause
)

REM 如果命令SuccessExecute，Del临时批处理文件和错误Log文件
if exist tmp.bat del tmp.bat
if exist %LOG_FILE% del %LOG_FILE%
