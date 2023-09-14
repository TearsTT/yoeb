@echo off

REM 获取传递的参数作为倒计时时间（以秒为单位）
set "CountdownTime=%~1"

REM 显示初始剩余时间
echo 关机倒计时：%CountdownTime% 秒

REM 倒计时循环
for /l %%i in (%CountdownTime%,-1,1) do (
    REM 显示剩余时间
    echo 剩余时间：%%i 秒
    REM 等待1秒
    ping -n 2 127.0.0.1 >nul
)

REM 关机
shutdown /s /f /t 0