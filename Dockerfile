FROM mcr.microsoft.com/dotnet/core/aspnet:3.0-buster-slim AS base
RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt install -y build-essential
RUN curl -sL https://deb.nodesource.com/setup_13.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g yarn
RUN npm install -g webpack
ARG NODE_ENV=development
ENV NODE_ENV $NODE_ENV
ARG CHOKIDAR_USEPOLLING=1
ENV CHOKIDAR_USEPOLLING $CHOKIDAR_USEPOLLING