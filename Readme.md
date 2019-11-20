# NetCore Spa Dev Box

This is a Base Image only developed for development purpose, which includes:

- netcore sdk with debian buster slim (From the official repo).
- nodejs 13 and npm
- yarn
- webpack

## Why we are building this image

Since microsoft have removed nodejs from their dotnet sdk base images, there is a gap when you want to use the webpack middlewares in development mode because you need node and dotnet at the same process and for this case a multistage build is not a good solution.

## Additional notes

There is no entry point. You can not run this image alone, the idea who follow this image is to be used as a base image for development purposes (You are doing a SPA with dotnet and you are calling your webpack middleware in development mode). 