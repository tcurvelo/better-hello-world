FROM ubuntu:latest
MAINTAINER tcurvelo@gmail.com

RUN apt-get update && \
    apt-get install -y \
      mplayer \
      caca-utils \
      ;

COPY video.webm /tmp/video.webm

ENV CACA_DRIVER ncurses
ENV TERM xterm

CMD mplayer -quiet -ao null -vo caca /tmp/video.webm
