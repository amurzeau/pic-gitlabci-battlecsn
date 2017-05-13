FROM debian:stretch-slim

# Installation des dépendences
# ****************************

RUN bash -c 'mkdir -p /usr/share/man/man{1..8}' && \
  apt-get update && \
  apt-get install -y --no-install-recommends mongodb openjdk-8-jdk-headless maven tree git && \
  apt-get clean && \
  rm -rf /usr/share/man/* && \
  mkdir -p /data/db

# Execution au demarrage du container
# ***********************************

CMD java -version \
&& mvn -version \
&& git --version \
&& echo "PhantomJS `phantomjs --version`" 
