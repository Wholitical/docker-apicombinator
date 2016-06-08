FROM java:8

RUN \
#update and upgrade
 apt-get update && apt-get upgrade -y && apt-get install git

RUN mkdir /apicombinator/

WORKDIR /apicombinator/

RUN git clone https://github.com/lndobryden/wholitical-apicombinator.git .

ADD entrypoint.sh /

RUN ./gradlew build

EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]
