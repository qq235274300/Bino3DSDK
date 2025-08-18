@echo off
setlocal

REM 设置源目录（桌面）
set "SOURCE=%USERPROFILE%\Desktop\Bino3DSDK\3DConfig"

REM 设置目标目录
set "DEST=C:\MeshGame\x64\Release"

REM 创建目标目录（如果不存在）
if not exist "%DEST%" (
    echo Creating target directory: "%DEST%"
    mkdir "%DEST%"
)

REM 拷贝文件（包括子目录和隐藏文件）
xcopy "%SOURCE%\*" "%DEST%\" /E /H /Y /C

echo.
echo 
pause
