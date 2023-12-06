FROM openjdk:8-jre-alpine

# Definiere die Umgebungsvariablen
ENV KAFKA_VERSION=2.8.1
ENV SCALA_VERSION=2.13
ENV KAFKA_HOME /opt/kafka_${SCALA_VERSION}-${KAFKA_VERSION}
ENV PATH ${PATH}:${KAFKA_HOME}/bin

# Installiere erforderliche Werkzeuge
RUN apk --no-cache add wget bash

# Lade Kafka herunter und entpacke es
RUN wget -q https://downloads.apache.org/kafka/${KAFKA_VERSION}/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz -O /tmp/kafka.tgz && \
    tar -xzf /tmp/kafka.tgz -C /opt && \
    rm /tmp/kafka.tgz

# Kopiere die Konfigurationsdateien in das Image
COPY server.properties ${KAFKA_HOME}/config/server.properties

# Öffne den Kafka-Port
EXPOSE 9092

# Starte Kafka
CMD ["kafka-server-start.sh", "${KAFKA_HOME}/config/server.properties"]
