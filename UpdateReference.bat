cd ../gryLibrary/GRYLibrary
call GenerateReference.bat
robocopy _site ../../gryLibraryReference/Site /mir
cd ../../gryLibraryReference
git add -A
git commit -m "Updated Reference"