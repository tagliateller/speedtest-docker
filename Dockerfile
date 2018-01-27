FROM centos:latest

RUN yum -y install ca-certificates python3

ENV SPEEDTEST_VERSION 1.0.2

RUN curl https://bootstrap.pypa.io/get-pip.py | python

RUN pip install speedtest-cli==$SPEEDTEST_VERSION

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["speedtest-cli"]
