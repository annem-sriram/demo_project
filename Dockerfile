FROM tomcat:8.5.47-jdk8-openjdk
COPY target/*.war /usr/local/tomcat/webapps
RUN  sed -i '19,20d' /usr/local/tomcat/webapps/manager/META-INF/context.xml
#RUN cd /usr/local/tomcat/conf
RUN echo '<tomcat-users>' >/usr/local/tomcat/conf/tomcat-users.xml
RUN echo '<user username="admin" password="admin" roles="manager-gui,admin-gui,manager-script"/>' >>/usr/local/tomcat/conf/tomcat-users.xml
RUN echo '</tomcat-users>' >>/usr/local/tomcat/conf/tomcat-users.xml
RUN echo 'Veera'
