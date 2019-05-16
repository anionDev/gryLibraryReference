pushd ..\..\gryLibrary
git checkout development
git pull AnionDev
popd
call 01_UpdateReference.bat
if %errorlevel% neq 0 exit /b %errorlevel%
call 02_GenerateTestCoverage.bat
if %errorlevel% neq 0 exit /b %errorlevel%
call 03_GenerateTestReport.bat
if %errorlevel% neq 0 exit /b %errorlevel%