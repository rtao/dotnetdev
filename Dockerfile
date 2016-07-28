FROM microsoft/dotnet:latest
MAINTAINER Ronald Tao

RUN useradd -m ronald
USER ronald
WORKDIR /home/ronald