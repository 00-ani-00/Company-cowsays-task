FROM ubuntu:20.04

RUN apt update

RUN apt install cowsay -y

RUN apt install fortune -y

RUN apt install netcat -y

RUN mkdir /app

WORKDIR /app

COPY wisecow.sh /app

EXPOSE 4499

CMD ["/bin/bash", "-c", "./wisecow.sh"]
