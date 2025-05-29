@echo off
title Download Organizer
color 0a

:MENU
cls
echo 🌟 Download Organizer Menu 🌟
echo 1. Organize All Files
echo 2. Organize Images Only
echo 3. Organize Videos Only
echo 4. Organize Documents Only (Text, Office, PDF)
echo 5. Organize Compressed Files Only (Zip, RAR)
echo 6. Organize Programs Only (EXE)
echo 7. Exit
set /p choice=Enter your choice (1-7): 

set DOWNLOADS=%USERPROFILE%\Downloads
set IMAGES=%DOWNLOADS%\Images
set VIDEOS=%DOWNLOADS%\Videos
set DOCS=%DOWNLOADS%\Documents
set COMPRESSED=%DOWNLOADS%\Compressed
set PROGRAMS=%DOWNLOADS%\Programs

if %choice%==1 goto ALL_FILES
if %choice%==2 goto IMAGES_ONLY
if %choice%==3 goto VIDEOS_ONLY
if %choice%==4 goto DOCS_ONLY
if %choice%==5 goto COMPRESSED_ONLY
if %choice%==6 goto PROGRAMS_ONLY
if %choice%==7 exit
goto MENU

:ALL_FILES
mkdir %IMAGES% %VIDEOS% %DOCS% %COMPRESSED% %PROGRAMS%
move %DOWNLOADS%\*.jpg %IMAGES%\ >nul 2>&1
move %DOWNLOADS%\*.png %IMAGES%\ >nul 2>&1
move %DOWNLOADS%\*.mp4 %VIDEOS%\ >nul 2>&1
move %DOWNLOADS%\*.avi %VIDEOS%\ >nul 2>&1
move %DOWNLOADS%\*.txt %DOCS%\ >nul 2>&1
move %DOWNLOADS%\*.pdf %DOCS%\ >nul 2>&1
move %DOWNLOADS%\*.docx %DOCS%\ >nul 2>&1
move %DOWNLOADS%\*.xlsx %DOCS%\ >nul 2>&1
move %DOWNLOADS%\*.pptx %DOCS%\ >nul 2>&1
move %DOWNLOADS%\*.zip %COMPRESSED%\ >nul 2>&1
move %DOWNLOADS%\*.rar %COMPRESSED%\ >nul 2>&1
move %DOWNLOADS%\*.exe %PROGRAMS%\ >nul 2>&1
echo [%date% %time%] Successfully organized all files! >> %DOWNLOADS%\receipts.txt
goto END

:IMAGES_ONLY
mkdir %IMAGES%
move %DOWNLOADS%\*.jpg %IMAGES%\ >nul 2>&1
move %DOWNLOADS%\*.png %IMAGES%\ >nul 2>&1
echo [%date% %time%] Successfully organized images! >> %DOWNLOADS%\receipts.txt
goto END

:VIDEOS_ONLY
mkdir %VIDEOS%
move %DOWNLOADS%\*.mp4 %VIDEOS%\ >nul 2>&1
move %DOWNLOADS%\*.avi %VIDEOS%\ >nul 2>&1
echo [%date% %time%] Successfully organized videos! >> %DOWNLOADS%\receipts.txt
goto END

:DOCS_ONLY
mkdir %DOCS%
move %DOWNLOADS%\*.txt %DOCS%\ >nul 2>&1
move %DOWNLOADS%\*.pdf %DOCS%\ >nul 2>&1
move %DOWNLOADS%\*.docx %DOCS%\ >nul 2>&1
move %DOWNLOADS%\*.xlsx %DOCS%\ >nul 2>&1
move %DOWNLOADS%\*.pptx %DOCS%\ >nul 2>&1
echo [%date% %time%] Successfully organized documents! >> %DOWNLOADS%\receipts.txt
goto END

:COMPRESSED_ONLY
mkdir %COMPRESSED%
move %DOWNLOADS%\*.zip %COMPRESSED%\ >nul 2>&1
move %DOWNLOADS%\*.rar %COMPRESSED%\ >nul 2>&1
echo [%date% %time%] Successfully organized compressed files! >> %DOWNLOADS%\receipts.txt
goto END

:PROGRAMS_ONLY
mkdir %PROGRAMS%
move %DOWNLOADS%\*.exe %PROGRAMS%\ >nul 2>&1
echo [%date% %time%] Successfully organized programs! >> %DOWNLOADS%\receipts.txt
goto END

:END
echo.
echo Operation completed successfully SF!
echo Results saved in receipts.txt.
pause
goto MENU