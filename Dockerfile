FROM microsoft/dotnet:latest
MAINTAINER Ronald Tao

RUN useradd -m ronald
USER ronald
WORKDIR /home/ronald

RUN git clone -b develop https://github.com/rtao/dotnetdev.git
WORKDIR /home/ronald/dotnetdev

RUN dotnet restore \
    && dotnet build \
    && dotnet run