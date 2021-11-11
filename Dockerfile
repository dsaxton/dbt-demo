FROM python:3.9-slim-bullseye

RUN apt-get update
RUN apt-get -y install \
    postgresql python3 python3-pip python3-dev

RUN pip3 install cffi \
    && pip3 install cryptography==3.3.2 \
    && pip3 install dbt

COPY profiles.yml /root/.dbt/
COPY dbt-demo /root/dbt-demo/
COPY build.sql build_tables.sh /root/
COPY connect_postgres.sh /root/dbt-demo/
RUN chmod +x \
    /root/dbt-demo/connect_postgres.sh \
    /root/build_tables.sh \
    && /etc/init.d/postgresql start

WORKDIR /root/dbt-demo
