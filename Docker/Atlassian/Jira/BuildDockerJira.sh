# Verwende ein offizielles OpenJDK-Basisimage
FROM openjdk:8

# Setze Umgebungsvariable für die Jira-Home-Verzeichnis
ENV JIRA_HOME=/var/atlassian/application-data/jira

# Installiere erforderliche Pakete
RUN apt-get update && apt-get install -y \
    wget \
    tar \
    xmlstarlet

# Lade Jira-Installationsdatei herunter
RUN wget -O /tmp/jira.tar.gz https://www.atlassian.com/software/jira/downloads/binary/atlassian-jira-latest.tar.gz

# Entpacke die Jira-Dateien und verschiebe sie in das Zielverzeichnis
RUN tar xzf /tmp/jira.tar.gz -C /opt \
    && mv /opt/atlassian-jira-* /opt/jira

# Konfiguriere Jira-Home-Verzeichnis
RUN mkdir -p $JIRA_HOME \
    && chown -R daemon:daemon $JIRA_HOME

# Exponiere den HTTP-Port
EXPOSE 8080

# Starte Jira
CMD ["/opt/jira/bin/start-jira.sh", "-fg"]
