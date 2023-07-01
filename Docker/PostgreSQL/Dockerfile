# Basisimage
FROM postgres:latest

# Umgebungsvariablen für die PostgreSQL-Konfiguration
ENV POSTGRES_USER="user"
ENV POSTGRES_PASSWORD="password"
ENV POSTGRES_DB="password"


# Exponieren des PostgreSQL-Ports
EXPOSE 5432

# Starten der PostgreSQL-Datenbank
CMD ["postgres"]

#docker build -t mein-postgresql-image .
#docker run -d --name mein-postgresql-container -p 5432:5432 mein-postgresql-image
