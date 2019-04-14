cd ../../gryLibrary/Scripts
call GenerateReferenceLocal.bat
if %errorlevel% neq 0 exit /b %errorlevel%
robocopy ../GRYLibrary/_site ../../gryLibraryReference/Reference /mir
cd ../../gryLibraryReference/Scripts