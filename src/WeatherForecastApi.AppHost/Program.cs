var builder = DistributedApplication.CreateBuilder(args);

var apiService = builder.AddProject<Projects.WeatherForecastApi_ApiService>("apiservice");

builder.AddProject<Projects.WeatherForecastApi_Web>("webfrontend")
    .WithReference(apiService);

builder.Build().Run();
