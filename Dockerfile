FROM centos:latest
MAINTAINER satishgkumar33@gmail.com

RUN yum install httpd -y
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]


