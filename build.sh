#!/bin/bash

set -e
rm -fr ./out
dotnet restore ./hwapp
dotnet publish -c Release -o ./out ./hwapp



#/Users/dzirkler/Projects/experiments/dotnetcorehelloworld
#docker run -it --rm -v '/Users/dzirkler/Projects/experiments/dotnetcorehelloworld:/src' microsoft/dotnet:1.1.1-sdk sh /src/build.sh
