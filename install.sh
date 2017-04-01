#!/bin/bash

curl -SL https://dotnetcli.blob.core.windows.net/dotnet/Sdk/1.1.1/dotnet-dev-debian-x64.1.1.1.tar.gz --output dotnet.tar.gz
mkdir -p /usr/share/dotnet
tar -zxf dotnet.tar.gz -C /usr/share/dotnet 
rm dotnet.tar.gz 
ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet