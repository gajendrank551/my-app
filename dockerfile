FROM ubuntu

RUN apt update 
RUN apt install openjdk-17-* -y 
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.84/bin/apache-tomcat-9.0.84.tar.gz .
RUN tar -zxvf apache-tomcat-9.0.84.tar.gz
RUN mv apache-tomcat-9.0.84/* /opt/tomcat
EXPOSE 8080
COPY target/app.war webapps/
CMD ["/opt/tomcat/bin/catalina.sh", "run"]


