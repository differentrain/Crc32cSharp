#!/bin/bash
stty -echo
cd `dirname $0`
dotnet build ../projects/Crc32cSharp_app.csproj -r osx-x64 -c release
dotnet build ../projects/Crc32cSharp_lib.csproj -r osx-x64 -c release
dotnet publish ../projects/Crc32cSharp_app_rt.csproj -r osx-x64 -c release
dotnet publish ../projects/Crc32cSharp_lib_rt.csproj /p:NativeLib=Shared -r osx-x64 -c release
dotnet publish ../projects/Crc32cSharp_lib_rt.csproj /p:NativeLib=Static -r osx-x64 -c release
read