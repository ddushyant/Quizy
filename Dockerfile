FROM centos:7
USER root

RUN yum -y install httpd
RUN yum -y install php php-json

COPY . /var/www/html/
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

EXPOSE 80
