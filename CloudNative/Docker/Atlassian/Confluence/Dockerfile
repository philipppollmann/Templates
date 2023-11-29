# Verwenden Sie das offizielle Confluence-Basisimage von Atlassian
FROM atlassian/confluence-server:latest

# Konfigurieren Sie die Umgebungsvariable für den Datenbanktyp (z. B. H2)
ENV ATL_DB_TYPE h2

# Kopieren Sie die Confluence-Installationsdateien in den Container
ADD https://www.atlassian.com/software/confluence/downloads/binary/atlassian-confluence-<VERSION>.tar.gz /opt/atlassian/confluence/

# Entpacken Sie die Confluence-Installationsdateien
RUN tar -xzvf /opt/atlassian/confluence/atlassian-confluence-<VERSION>.tar.gz --strip-components=1 -C /opt/atlassian/confluence/

# Ändern Sie den Confluence-Home-Ordner, wenn gewünscht
ENV ATL_HOME /var/atlassian/application-data/confluence

# Exponieren Sie den Confluence-Port (Standard: 8090)
EXPOSE 8090

# Starten Sie Confluence
CMD ["/opt/atlassian/confluence/bin/start-confluence.sh", "-fg"]
