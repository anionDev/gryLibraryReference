cd ../../gryLibrary/Scripts
call GenerateReferenceLocal.bat
robocopy ../GRYLibrary/_site ../../gryLibraryReference/Site /mir
cd ../../gryLibraryReference
git add -A
git commit -m "Updated Reference"
cd Scripts