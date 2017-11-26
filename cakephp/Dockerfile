FROM	centos:centos7.3.1611
MAINTAINER isa
ENV 	container docker
RUN		yum swap -y fakesystemd systemd
RUN		yum update -y
RUN		yum -y install httpd && yum clean all
RUN		yum install epel-release -y
RUN		rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
RUN		yum -y install --enablerepo=remi,remi-php56 php php-common php-mbstring php-mysqlnd php-intl php-xml
RUN		systemctl enable httpd
ADD     composerinstall.sh /var/tmp/
RUN     chmod +x /var/tmp/composerinstall.sh
EXPOSE	80 
