#!/bin/bash

set -e
rm -fr /src/out
dotnet restore /src/hwapp
dotnet publish -c Release -o /src/out /src/hwapp



#/Users/dzirkler/Projects/experiments/dotnetcorehelloworld
#docker run -it --rm -v '/Users/dzirkler/Projects/experiments/dotnetcorehelloworld:/src' microsoft/dotnet:1.1.1-sdk sh /src/build.sh
