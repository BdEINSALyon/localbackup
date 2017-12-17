FROM python:3.6

WORKDIR /backup

COPY requirements.txt .
RUN pip install -r requirements.txt

ENV FOLDER /data
ENV DATABASE_URL postgres://postgres@localhost/postgres
ENV FTP_URL ftp://backup:password@backup.network/backups/mydb
VOLUME /tmp
VOLUME /data

COPY backup.py .
CMD python /backup/backup.py
