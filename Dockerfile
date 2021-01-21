FROM ubuntu:20.04

VOLUME /var/lib/nzbget

RUN apt-get update && apt-get install -y locales curl && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8

RUN curl -L https://nzbget.net/download/nzbget-latest-bin-linux.run --output nzbget-latest-bin-linux.run \
    && bash nzbget-latest-bin-linux.run --destdir /opt/nzbget

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 6789

CMD ["/bin/sh", "-ec", "while :; do sleep 5 ; done"]