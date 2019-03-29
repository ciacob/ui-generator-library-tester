echo off

SET javaDir=k:\DATA\RW\PROJECTS\_PROGRAMMING_\_PROJECTS_\_BUILD_\java\bin
SET sdkDir=k:\DATA\RW\PROJECTS\_PROGRAMMING_\_PROJECTS_\_BUILD_\sdk\win64--Flex-4-16-1--AIR-28
SET sdkBinDir=%sdkDir%\bin
SET sdkJarsDir=%sdkDir%\lib
SET frameworksDir=%sdkDir%\frameworks


%sdkBinDir%\adl -profile extendedDesktop ./bin-debug/UiGeneratorTester1-app.xml

pause