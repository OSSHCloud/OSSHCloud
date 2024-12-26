FROM postgres:latest

# Copy the database initialize script:
# ADD  docker-entrypoint-initdb.d/ /docker-entrypoint-initdb.d/
COPY init-db.sql /docker-entrypoint-initdb.d/

# Default values for passwords and database name. Can be overridden on docker run
ENV POSTGRES_USER=myuser
ENV POSTGRES_PASSWORD=mypassword
ENV POSTGRES_DB=mydatabase

EXPOSE 5432
