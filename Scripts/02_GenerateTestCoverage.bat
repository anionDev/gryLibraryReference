where vstest.console > temp.txt
set /p testexe=<temp.txt
del temp.txt
OpenCover.Console -target:"%testexe%" -targetargs:..\..\gryLibrary\GRYLibraryTest\bin\Release\GRYLibraryTest.dll -filter:"+[GRYLibrary]* -[GRYLibraryTest]*" -output:..\OpenCoverTests.xml -register:user