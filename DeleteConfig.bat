@echo off
setlocal

REM 设置目标目录
set "TARGET=C:\MeshGame\x64\Release"

REM 删除文件
del /F /Q "%TARGET%\Bino3D_Capture.addon64"
del /F /Q "%TARGET%\dxgi.dll"
del /F /Q "%TARGET%\ReShade.ini"
del /F /Q "%TARGET%\ReShade.log"
del /F /Q "%TARGET%\ReShadePreset.ini"

REM 删除文件夹（/S 表示删除子目录，/Q 静默）
rd /S /Q "%TARGET%\reshade-shaders"

echo.
echo 
pause
