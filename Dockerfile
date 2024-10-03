FROM mcr.microsoft.com/dotnet/sdk:8.0 AS base

WORKDIR /src

COPY src/WeatherForecastApi.Web/*.csproj .

WORKDIR /src

RUN dotnet restore "WeatherForecastApi.Web.csproj"

COPY src/ .

RUN dotnet publish WeatherForecastApi.Web -c Release --output /src/build_output

FROM mcr.microsoft.com/dotnet/aspnet:8.0 

EXPOSE 8080

WORKDIR /src

COPY --from=base /src/build_output .

ENTRYPOINT ["dotnet", "WeatherForecastApi.Web.dll"]