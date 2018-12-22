@echo off
cd /d %~dp0
dotnet build ..\projects\Crc32cSharp_app.csproj -r win-x64 -c release
dotnet build ..\projects\Crc32cSharp_lib.csproj -r win-x64 -c release
dotnet publish ..\projects\Crc32cSharp_app_rt.csproj -r win-x64 -c release
dotnet publish ..\projects\Crc32cSharp_lib_rt.csproj /p:NativeLib=Shared -r win-x64 -c release
dotnet publish ..\projects\Crc32cSharp_lib_rt.csproj /p:NativeLib=Static -r win-x64 -c release
pause