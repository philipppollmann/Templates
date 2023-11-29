FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build-env

WORKDIR /app

COPY . ./

RUN dotnet restore MyCSharpWebApp.csproj
RUN dotnet publish MyCSharpWebApp.csproj -c Release -o out

FROM mcr.microsoft.com/dotnet/aspnet:7.0

WORKDIR /app

COPY --from=build-env /app/out .

CMD ["dotnet", "MyCSharpWebApp.dll"]
