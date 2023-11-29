FROM mcr.microsoft.com/dotnet/runtime:7.0 AS base
WORKDIR /app

FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /src
COPY ["StandardConsoleApp/StandardConsoleApp.csproj", "StandardConsoleApp/"]
RUN dotnet restore "StandardConsoleApp/StandardConsoleApp.csproj"
COPY . .
WORKDIR "/src/StandardConsoleApp"
RUN dotnet build "StandardConsoleApp.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "StandardConsoleApp.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "StandardConsoleApp.dll"]
