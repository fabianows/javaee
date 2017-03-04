FROM centos
RUN yum install -y wget && \
	wget http://javadl.oracle.com/webapps/download/AutoDL?BundleId=207220 && \
	mv AutoDL?BundleId=207220 jre-8u77-linux-x64.rpm && \
	rpm -ivh jre-8u77-linux-x64.rpm && \
	rm jre-8u77-linux-x64.rpm && \
	yum install -y mariadb-server && \
	mkdir /opt/tomcat && \
	cd /opt/tomcat && \
	wget apache.cu.be/tomcat/tomcat-8/v8.5.11/bin/apache-tomcat-8.5.11.tar.gz && \
	tar zxf apache-tomcat-8.5.11.tar.gz -C /opt/tomcat && \
	rm apache-tomcat-8.5.11.tar.gz

CMD /opt/tomcat/apache-tomcat-8.5.11/bin/catalina.sh run
EXPOSE 8080
