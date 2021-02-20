@echo off 

setlocal enabledelayedexpansion 

set "_user_=root"
set "_pwd_=router"
set "_ip_AddPac_GS1002_=192.168.0.200 23"

>"script_ts.scr" ^
    (
     echo=!_ip_AddPac_GS1002_!
     echo=WAIT "Login:"
     echo=SEND "!_user_!\m"
     echo=WAIT "Password:"
     echo=SEND "!_pwd_!\m"
     echo=SEND "enable\m"
     echo=SEND "reboot 10\m"
     echo=SEND "Exit\m"
    ) && "TST10.exe" /r:"script_ts.scr" /o:"output_ts.txt"
endlocal & goto :EOF