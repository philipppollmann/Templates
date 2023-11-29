# Basisimage
FROM nginx:latest

# Setze das Arbeitsverzeichnis auf das aktuelle Verzeichnis
WORKDIR /app

# Kopiere die index.php in das Image
COPY index.php /app/

# Installiere PHP und SQL Server-Erweiterung
#RUN apt-get update && \
#    apt-get install -y php php-mysql php-sqlsrv

# Konfiguriere NGINX
COPY nginx.conf /etc/nginx/nginx.conf
