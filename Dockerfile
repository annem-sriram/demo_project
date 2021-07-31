MAINTAINER veera.devops@gmail.com
FROM tomcat:8.5.47-jdk8-openjdk
COPY target/*.war /usr/local/tomcat/webapps
RUN cd /usr/local/tomcat/conf
RUN echo '<tomcat-users>' >tomcat-users.xml
RUN echo '<user username="admin" password="admin" roles="manager-gui,admin-gui,manager-script"/>' >>tomcat-users.xml
RUN echo '</tomcat-users>' >>tomcat-users.xml
RUN cd /usr/local/tomcat/webapps/manager/META-INF
RUN sed -i '19,20d' context.xml
