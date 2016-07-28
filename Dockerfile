FROM microsoft/dotnet:latest
MAINTAINER Ronald Tao

RUN useradd -m ronald
USER ronald
WORKDIR /home/ronald

RUN git clone -b develop https://github.com/rtao/dotnetdev.git
WORKDIR /home/ronald/dotnetdev

RUN dotnet restore \
    && dotnet build 

COPY project-start.sh /project-start.sh
ENTRYPOINT ["/project-start.sh"]
EXPOSE 5000

