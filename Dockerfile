FROM postgres:latest

RUN apt-get update && apt-get install -y python3 python3-pip

RUN pip3 install --upgrade pip
RUN pip3 install patroni[etcd]
RUN pip3 install psycopg2-binary

COPY patroni.yml /etc/patroni.yml

CMD ["patroni", "/etc/patroni.yml"]
