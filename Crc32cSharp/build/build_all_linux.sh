#!/bin/bash
stty -echo
dotnet build ../projects/Crc32cSharp_app.csproj -r linux-x64 -c release
dotnet build ../projects/Crc32cSharp_lib.csproj -r linux-x64 -c release
dotnet publish ../projects/Crc32cSharp_app_rt.csproj -r linux-x64 -c release
dotnet publish ../projects/Crc32cSharp_lib_rt.csproj /p:NativeLib=Shared -r linux-x64 -c release
dotnet publish ../projects/Crc32cSharp_lib_rt.csproj /p:NativeLib=Static -r linux-x64 -c release
read