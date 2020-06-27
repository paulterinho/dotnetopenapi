#!/usr/bin/bash

echo "Generating NSwag"
echo "Generating Swagger documents"

# Create the Swagger Document
nswag run nswag.json /runtime:NetCore31

# Create the CS Controllers
echo "Generating CSharp Controllers"
nswag swagger2csclient /input:Generated\TodoApi.Swagger.json /output:Generated\TodoApi.Generated.txt /namespace:com.walterp.todo

# Create the Typescript Controllers.
echo "Generating Typescript Files"
nswag swagger2tsclient /input:Generated\TodoApi.Swagger.json /output:Generated\TodoApi.Generated.txt /namespace:com.walterp.todo


