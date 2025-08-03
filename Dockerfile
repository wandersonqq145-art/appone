FROM mcr.microsoft.com/dotnet/aspnet:8.0
LABEL maintainer="alan_ <alan_@example.com>"

WORKDIR /app

# Copia o conteúdo da pasta temp/ (não a pasta em si) para dentro de /app
COPY temp/ .

# Define a entrada para rodar o aplicativo e escutar externamente
ENTRYPOINT ["dotnet", "bin/GxNetCoreStartup.dll", "--urls", "http://0.0.0.0:5000"]
