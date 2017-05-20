FROM microsoft/dotnet:1.1.1-sdk AS sdk
WORKDIR /src
COPY . .
RUN /src/build.sh


FROM microsoft/dotnet:1.1.1-runtime AS run
WORKDIR /app
COPY ./hwapp/out .
ENTRYPOINT ["dotnet", "/app/hwapp.dll"]
