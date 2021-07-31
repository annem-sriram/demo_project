MAINTAINER veera.devops@gmail.com
FROM tomcat:8.5.47-jdk8-openjdk
COPY target/*.war /usr/local/tomcat/webapps
CMD cd /usr/local/tomcat/conf
CMD echo '<tomcat-users>' >tomcat-users.xml
CMD echo '<user username="admin" password="admin" roles="manager-gui,admin-gui,manager-script"/>' >>tomcat-users.xml
CMD echo '</tomcat-users>' >>tomcat-users.xml
CMD cd /usr/local/tomcat/webapps/manager/META-INF
CMD sed -i '19,20d' context.xml
