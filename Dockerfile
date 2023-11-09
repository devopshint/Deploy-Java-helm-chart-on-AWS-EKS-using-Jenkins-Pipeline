FROM tomcat:9
WORKDIR /usr/local/tomcat/webapps/
COPY ./target/hello-1.0.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
EXPOSE 8080
#
