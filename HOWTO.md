
#Bibliography

## Step 1) Follow this Tutorial to make  TODO project
	- https://docs.microsoft.com/en-us/aspnet/core/tutorials/first-web-api?view=aspnetcore-3.1&tabs=visual-studio
		- Add Microsoft.EntityFrameworkCore.SqlServer
		- Microsoft.EntityFrameworkCore.InMemory


### Scaffold a Controller

Right-click the Controllers folder.

Select Add > New Scaffolded Item.

Select API Controller with actions, using Entity Framework, and then select Add.

In the Add API Controller with actions, using Entity Framework dialog:

Select TodoItem (TodoApi.Models) in the Model class.
Select TodoContext (TodoApi.Models) in the Data context class.
Select Add.


## Step 2) Add the Swagger Document Gen Tool
( https://docs.microsoft.com/en-us/aspnet/core/tutorials/getting-started-with-nswag?view=aspnetcore-3.1&tabs=visual-studio )

Customize API documentation
Swagger provides options for documenting the object model to ease consumption of the web API.

API info and description
In the Startup.ConfigureServices method, a configuration action passed to the AddSwaggerDocument method adds information such as the author, license, and description:

C#

Copy
services.AddSwaggerDocument(config =>
{
    config.PostProcess = document =>
    {
        document.Info.Version = "v1";
        document.Info.Title = "ToDo API";
        document.Info.Description = "A simple ASP.NET Core web API";
        document.Info.TermsOfService = "None";
        document.Info.Contact = new NSwag.OpenApiContact
        {
            Name = "Shayne Boyer",
            Email = string.Empty,
            Url = "https://twitter.com/spboyer"
        };
        document.Info.License = new NSwag.OpenApiLicense
        {
            Name = "Use under LICX",
            Url = "https://example.com/license"
        };
    };
});


https://github.com/RicoSuter/NSwag/wiki/NSwag.MSBuild
