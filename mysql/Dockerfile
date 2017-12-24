FROM centos:centos7.3.1611
MAINTAINER isa
ENV container docker
RUN yum swap -y fakesystemd systemd
RUN yum -y update
RUN yum -y localinstall http://dev.mysql.com/get/mysql57-community-release-el7-7.noarch.rpm
RUN yum -y install mysql-community-server
RUN systemctl enable mysqld
ADD ./Dockerfiles/mysql/docker-entrypoint-initdb.d/dbconf.sh /var/tmp/
RUN chmod +x /var/tmp/dbconf.sh
ENTRYPOINT ["/var/tmp/dbconf.sh"]
