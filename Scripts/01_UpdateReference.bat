pushd ..\..\gryLibrary\Scripts
call GenerateReferenceLocal.bat
if %errorlevel% neq 0 exit /b %errorlevel%
robocopy ../GRYLibrary/ReferenceGeneration/_site ../../gryLibraryReference/Reference /mir
popd