FROM alpine

LABEL maintainer="<icarrilloquero@gmail.com>"

RUN echo "http://dl-4.alpinelinux.org/alpine/edge/main/" >> /etc/apk/repositories && \ 
	apk update --no-cache && \
	apk add transmission-daemon tzdata
WORKDIR /usr/bin

EXPOSE 9091 51413

VOLUME /config
VOLUME /output
VOLUME /to_download

ENV USERNAME=${USERNAME}
ENV PASSWORD=${PASSWORD}
ENV PORT=${PORT}

CMD transmission-daemon -c /to_download -w /output -f -t -a *.*.*.* -u "$USERNAME" -v "$PASSWORD" -p "$PORT"

