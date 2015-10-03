@echo off
echo Copying Files ...
echo f|xcopy ".\hafen-client\dist\client-res.jar" ".\files\client-res.jar" /R /Y
echo f|xcopy ".\hafen-client\dist\hafen.jar" ".\files\hafen.jar" /R /Y
echo f|xcopy ".\hafen-minion\dist\hafen-minion.jar" ".\files\hafen-minion.jar" /R /Y
