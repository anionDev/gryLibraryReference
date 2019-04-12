cd ../../gryLibrary/Scripts
call GenerateReferenceLocal.bat
if %errorlevel% neq 0 exit /b %errorlevel%
robocopy ../GRYLibrary/_site ../../gryLibraryReference/Site /mir
cd ../../gryLibraryReference
git add -A
git commit -m "Updated Reference"
cd Scripts