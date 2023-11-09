FFROM tomcat:9
WORKDIR /usr/local/tomcat/webapps/
ADD ./target/hello-1.0.war ./hello-1.0.war
CMD ["catalina.sh", "run"]
EXPOSE 8080
#
