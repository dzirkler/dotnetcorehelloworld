FROM microsoft/dotnet:1.1.1-runtime

# COPY . /src
# WORKDIR /src
# RUN /src/install.sh
# WORKDIR /src/hwapp
# RUN dotnet restore && \
#     dotnet publish -c Release -o /app && \
#     rm -fr /src 

COPY ./hwapp/out /app

ENTRYPOINT ["dotnet", "/app/hwapp.dll"]
