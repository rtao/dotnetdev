FROM microsoft/dotnet:latest
MAINTAINER Ronald Tao

WORKDIR /var/tmp

RUN git clone -b develop https://github.com/rtao/dotnetdev.git
WORKDIR /var/tmp/dotnetdev

RUN chmod 755 ./project-start.sh

#COPY project-start.sh /project-start.sh
EXPOSE 5000

CMD ["/bin/bash"]
#CMD ["/project-start.sh"]
