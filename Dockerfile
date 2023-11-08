FROM tomcat:9
WORKDIR /usr/local/tomcat/webapps/


CMD ["catalina.sh", "run"]
EXPOSE 8080
#
