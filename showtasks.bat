call runcrud.bat
if "%ERRORLEVEL%" == "0" goto runbrowser
echo.
echo Browser does not work - run runcrud.bat and check errors
goto fail

:runbrowser
start chrome http://localhost:8080/crud/v1/task/getTasks
if "%ERRORLEVEL%" == "0" goto end
echo.
echo Cannot open browser
goto fail

:fail
echo.
echo There were errors

:end
echo.
echo Work is finished.