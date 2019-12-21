FROM kairyou/docker-dbxcli

RUN mkdir -p /root/.config/dbxcli

ADD . /ci

ENTRYPOINT ["/ci/docker-entrypoint.sh"]