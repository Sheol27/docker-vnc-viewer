FROM ubuntu:22.04

RUN apt update \
    && apt install -y x11vnc xvfb\
    && apt clean

ENV DISPLAY=:20

WORKDIR /app

COPY entryscript.sh .

RUN chmod +x entryscript.sh

EXPOSE 5920

ENTRYPOINT [ "/app/entryscript.sh" ]