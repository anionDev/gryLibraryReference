set currentDevBranch=dev/grylibrary-0-3-0-0

pushd ..\..\gryLibrary
git checkout %currentDevBranch%
popd
if %errorlevel% neq 0 exit /b %errorlevel%
call 01_UpdateReference.bat
if %errorlevel% neq 0 exit /b %errorlevel%
call 02_GenerateTestCoverage.bat
if %errorlevel% neq 0 exit /b %errorlevel%
call 03_GenerateTestReport.bat
if %errorlevel% neq 0 exit /b %errorlevel%
REM call 04_UploadTestCoverage.bat
if %errorlevel% neq 0 exit /b %errorlevel%
git add -A
git commit -m "Updated reference"
git push AnionDev