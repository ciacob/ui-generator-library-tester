echo off

SET javaDir=k:\DATA\RW\PROJECTS\_PROGRAMMING_\_PROJECTS_\_BUILD_\java\bin
SET sdkDir=k:\DATA\RW\PROJECTS\_PROGRAMMING_\_PROJECTS_\_BUILD_\sdk\win64--Flex-4-16-1--AIR-28
SET sdkBinDir=%sdkDir%\bin
SET sdkJarsDir=%sdkDir%\lib
SET frameworksDir=%sdkDir%\frameworks
SET certHome=k:\DATA\RW\Keys

REM could not get relative paths to properly work, so we are going to invoke ADT from INSIDE the release folder...
cd bin-debug

%javaDir%\java -jar %sdkJarsDir%\adt.jar -package -storetype pkcs12 -keystore %certHome%\claudius-iacob-certificate -target bundle ../bin-release/UiGeneratorTester2 UiGeneratorTester2-app.xml UiGeneratorTester2.swf

REM ...and then move back
cd ../

pause