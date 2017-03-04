FROM centos
RUN yum install -y wget
RUN wget http://javadl.oracle.com/webapps/download/AutoDL?BundleId=207220
RUN mv AutoDL?BundleId=207220 jre-8u77-linux-x64.rpm
RUN rpm -ivh jre-8u77-linux-x64.rpm
RUN rm jre-8u77-linux-x64.rpm
RUN mkdir /opt/tomcat
RUN cd /opt/tomcat
RUN wget apache.cu.be/tomcat/tomcat-8/v8.5.11/bin/apache-tomcat-8.5.11.tar.gz
RUN tar zxf apache-tomcat-8.5.11.tar.gz -C /opt/tomcat
RUN rm apache-tomcat-8.5.11.tar.gz

CMD /opt/tomcat/apache-tomcat-8.5.11/bin/catalina.sh run
EXPOSE 8080
