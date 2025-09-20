@echo off

echo USAGE: Press y then ENTER to only extract, or press yd then ENTER to extract then delete the zip file(s).
set /p input="Input: "


REM setting possible answers and their variables
set extrac=y
set extracNum=1
set extrdel=yd
set extrdelNum=1

REM if input is NOT a possible answer then count==2
if %input% == %extrac% (
    set extracNum=0
    )
if %input% == %extrdel% (
    set extrdelNum=0
    )
@ set /a "count=%extracNum%+%extrdelNum%"


@FOR /R %%a IN ("*.zip", "*.7z", "*.tar") DO @(
    @if %input%==%extrac% (
        REM extracted, not deleted, Mr. Bond
        @"C:\Program Files\7-Zip\7z.exe" x "%%a" -o"%%~dpna" -aoa
    ) else if %input%==%extrdel% (
        REM extracted and deleted
        @"C:\Program Files\7-Zip\7z.exe" x "%%a" -o"%%~dpna" -aoa
        @if errorlevel 1 (
            @echo There was an error so I won't delete
        ) else (
            REM You can also prompt with del /p
            @del "%%a"
        )
    ) else @if %count% equ 2 (
        REM if input NOT in possible answers
        @echo:
        @echo Wrong input 
        @echo input was: "%input%"
        TIMEOUT /T 10        
    ) else (
        REM input is correct, but something else is not - I don't know what
        @echo:
        @echo There was an error with something
        @echo "C:\Program Files\7-Zip\7z.exe" x "%%a" -o"%%~dpna" -aoa
        TIMEOUT /T 10
    )
)
