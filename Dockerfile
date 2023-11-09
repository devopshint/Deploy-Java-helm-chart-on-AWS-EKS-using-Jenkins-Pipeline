FROM tomcat:9
WORKDIR /usr/local/tomcat/webapps/
#COPY /var/lib/jenkins/workspace/demoproject/target/hello-1.0.war /var/lib/jenkins/workspace/demoproject/
#COPY hello-1.0.war /usr/local/tomcat/webapps
COPY src/main/java/com/boxfuse/samples/javawarhello/HelloServlet.java src/main/webapp
CMD ["catalina.sh", "run"]
EXPOSE 8080
#

