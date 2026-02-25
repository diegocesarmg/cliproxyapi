FROM eceasy/cli-proxy-api:latest

RUN apk add --no-cache gettext

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["./CLIProxyAPI"]
