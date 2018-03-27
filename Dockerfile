FROM centos:7
#FROM rhel7:7.4-113

RUN yum -y update
RUN yum -y install ca-certificates yum-utils
RUN yum -y groupinstall development
RUN yum -y install https://centos7.iuscommunity.org/ius-release.rpm
RUN yum -y install python36u
RUN yum -y install python36u-pip

ENV SPEEDTEST_VERSION 1.0.2
ENV HTTP_PROXY http://10.50.8.52:8080/
ENV http_proxy http://10.50.8.52:8080/
ENV HTTPS_PROXY http://10.50.8.52:8080/
ENV https_proxy http://10.50.8.52:8080/

#RUN curl https://bootstrap.pypa.io/get-pip.py | python

RUN pip3.6 install speedtest-cli==$SPEEDTEST_VERSION

# Link zu python

#COPY docker-entrypoint.sh /usr/local/bin/
#ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["speedtest-cli"]
