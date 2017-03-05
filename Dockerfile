FROM centos

# Tomcat stuff
RUN yum install -y wget && \
	wget http://javadl.oracle.com/webapps/download/AutoDL?BundleId=207220 && \
	mv AutoDL?BundleId=207220 jre-8u77-linux-x64.rpm && \
	rpm -ivh jre-8u77-linux-x64.rpm && \
	rm jre-8u77-linux-x64.rpm && \
	mkdir /opt/tomcat && \
	cd /opt/tomcat && \
	wget apache.cu.be/tomcat/tomcat-8/v8.5.11/bin/apache-tomcat-8.5.11.tar.gz && \
	tar zxf apache-tomcat-8.5.11.tar.gz -C /opt/tomcat && \
	rm apache-tomcat-8.5.11.tar.gz

ENV HOME=/root \
    MARIADB_MAJOR=10.1

# MariaDB Repo
ADD conf/MariaDB.repo /etc/yum.repos.d/MariaDB.repo

# MariaDB Setup
RUN yum -y update && yum clean all && \
    yum -y install openssh-server epel-release && \
    yum clean all && \
    yum -y install pwgen python-setuptools && \
    yum -y install MariaDB-server MariaDB-client && yum clean all

# Add Scripts
ADD scripts/ /

# Add App
ADD app/ /

# Add Tomcat files
ADD tomcat/tomcat-users.xml /opt/tomcat/apache-tomcat-8.5.11/conf/
ADD tomcat/manager.xml /opt/tomcat/apache-tomcat-8.5.11/conf/Catalina/localhost/
ADD tomcat/host-manager.xml /opt/tomcat/apache-tomcat-8.5.11/conf/Catalina/localhost/

# Add Supervisor Config
ADD conf/supervisord.conf /etc/supervisord.conf

# Setup Supervisord and SQL setup
RUN chmod 666 /etc/supervisord.conf && \
    easy_install supervisor

# Add MariaDB Config
ADD conf/server.cnf /etc/my.cnf.d/server.cnf

EXPOSE 8080 3306
VOLUME /var/lib/mysql
CMD ["/start.sh"]
