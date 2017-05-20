FROM debian:stretch-slim

# Installation des dépendences
# ****************************

RUN bash -c 'mkdir -p /usr/share/man/man{1..8}' && \
  apt-get update && \
  apt-get install -y --no-install-recommends mongodb && \
  apt-get clean && \
  rm -rf /usr/share/man/*


EXPOSE 27017 28017

CMD [ "mongod" ]

