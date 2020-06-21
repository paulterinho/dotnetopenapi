@ECHO OFF
ECHO Generating NSwag
ECHO - Generating Swagger documents

:: Create the Swagger Document
START nswag run nswag.json /runtime:NetCore31

:: Create the CS Controllers
ECHO Generating CSharp Controllers
START nswag swagger2csclient /input:Generated\TodoApi.Swagger.json /output:Generated\TodoApi.Generated.cs /namespace:com.walterp.todo

:: Create the Typescript Controllers.
ECHO Generating Typescript Files
START nswag swagger2tsclient /input:Generated\TodoApi.Swagger.json /output:Generated\TodoApi.Generated.ts /namespace:com.walterp.todo


