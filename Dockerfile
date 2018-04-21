FROM syncthing/syncthing:latest

COPY entrypoint.sh /entrypoint.sh

USER root

ENV ST_UID=1000
ENV ST_GID=1000

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/bin/syncthing", "-home", "/var/syncthing/config", "-gui-address", "0.0.0.0:8384"]
