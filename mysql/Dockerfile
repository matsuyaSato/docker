FROM centos:centos7.3.1611
MAINTAINER isa
ENV container docker
RUN yum -y update
RUN yum -y localinstall http://dev.mysql.comuget/mysql57-community-release-el7-7.noarch.rpm
RUN systemctl enable mysqld.service
RUN systemctl start mysqld.service
echo skip-grant-tables >> /etc/my.cnf
RUN systemctl restart mysqld.servicee
