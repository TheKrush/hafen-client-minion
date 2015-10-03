@echo off
echo Copying Files ...
echo f | xcopy ".\hafen-client\dist\hafen.jar" ".\hafen-minion\dist\hafen.jar" /R /Y
if NOT ["%errorlevel%"]==["0"] (
    pause
	goto :eof
)
echo f | xcopy ".\hafen-client\dist\client-res.jar" ".\hafen-minion\dist\lib\client-res.jar" /R /Y
if NOT ["%errorlevel%"]==["0"] (
    pause
	goto :eof
)
cd ".\hafen-minion\dist\"
echo Running hafen-minion.jar ...
java -Xms512m -Xmx1024m -jar hafen-minion.jar TESTING
if NOT ["%errorlevel%"]==["0"] (
    pause
)
cd ".\..\..\"
