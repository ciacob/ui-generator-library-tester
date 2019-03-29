echo off

SET javaDir=k:\DATA\RW\PROJECTS\_PROGRAMMING_\_PROJECTS_\_BUILD_\java\bin
SET sdkJarsDir=k:\DATA\RW\PROJECTS\_PROGRAMMING_\_PROJECTS_\_BUILD_\sdk\win64--Flex-4-16-1--AIR-28\lib
SET frameworksDir=k:\DATA\RW\PROJECTS\_PROGRAMMING_\_PROJECTS_\_BUILD_\sdk\win64--Flex-4-16-1--AIR-28\frameworks

%javaDir%\java -jar %sdkJarsDir%\mxmlc.jar +flexlib %frameworksDir% ./src/UiGeneratorTester2.mxml -load-config build_air_swf_config.xml -output ./bin-debug/UiGeneratorTester2.swf

copy /B /V /Y src\UiGeneratorTester2-app.xml bin-debug\UiGeneratorTester2-app.xml

pause

