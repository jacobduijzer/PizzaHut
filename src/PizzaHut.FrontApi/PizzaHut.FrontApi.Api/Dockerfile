FROM mcr.microsoft.com/dotnet/aspnet:5.0-alpine AS base
WORKDIR /app

FROM mcr.microsoft.com/dotnet/sdk:5.0 as build
WORKDIR /src

COPY . .

RUN dotnet publish -c Release -o ./out

FROM base AS final
WORKDIR /app
COPY --from=build /src/out .
ENTRYPOINT ["dotnet", "PizzaHut.FrontApi.Api.dll"]