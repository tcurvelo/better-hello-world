FROM python:3-alpine
MAINTAINER tcurvelo@gmail.com

RUN pip install asciinema
COPY video.cast /tmp/video.cast

ENTRYPOINT /usr/local/bin/asciinema play /tmp/video.cast
