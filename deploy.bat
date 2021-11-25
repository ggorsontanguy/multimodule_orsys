@echo on

SET userprofil=%systemdrive%%homepath%
SET tomcatpath="%CATALINA_HOME%"

echo *********************************************
echo Lancement checkout
echo *********************************************

call mvn scm:checkout -DcheckoutDirectory=livraison


echo *********************************************
echo Lancement compilation
echo *********************************************

cd %userprofil%\source\repos\TP2\TP2.2\monappli\livraison

call mvn clean package

echo *********************************************
echo Deploiement Livrable
echo *********************************************

SET src=%userprofil%\source\repos\TP2\TP2.2\monappli\monappli-web\target\monappli-web.war
SET dest=%tomcatpath%\webapps\

copy %src% %dest%

echo *********************************************
echo Lancement serveur applicatif
echo *********************************************

call %tomcatpath%\bin\startup.bat

start chrome http://localhost:8080/monappli-web/
pause