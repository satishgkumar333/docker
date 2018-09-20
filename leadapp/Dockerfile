FROM centos:latest
MAINTAINER satishgkumar33@gmail.com
RUN yum install -y wget \
        && wget https://www.dropbox.com/s/zw3p1ym52dv3sdv/jdk-8u181-linux-x64.tar.gz \
        && tar -zxvf jdk-8u181-linux-x64.tar.gz \
        && export JAVA_HOME=`pwd`/jdk1.8.0_181 \
        && export PATH=$PATH:$JAVA_HOME/bin \
        && wget http://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.33/bin/apache-tomcat-8.5.33.tar.gz \
        && tar -zxvf apache-tomcat-8.5.33.tar.gz \
        && wget https://updates.jenkins-ci.org/download/war/2.136/jenkins.war \
        && mv jenkins.war apache-tomcat-8.5.33/webapps/
ENV JAVA_HOME=/jdk1.8.0_181
EXPOSE 8080
ENTRYPOINT sh /apache-tomcat-8.5.33/bin/startup.sh; while true; do sleep 1000; done


