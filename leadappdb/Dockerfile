FROM centos:6
RUN yum install -y wget \
         && wget http://dev.mysql.com/get/mysql57-community-release-el7-7.noarch.rpm \
         && rpm -ivh mysql57-community-release-el7-7.noarch.rpm \
         && yum install -y mysql-server  \
         && echo "create user 'lead'@'localhost' identified by 'lead' ; grant all PRIVILEGES on *.* to 'lead'@'localhost' identified by 'lead';" > a.sql \
         && service mysqld start \
         && mysql –u root < ./a.sql
EXPOSE 3306
CMD  service mysqld start ; while true; do sleep 1000; done

