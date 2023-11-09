FROM tomcat:9
WORKDIR /usr/local/tomcat/webapps/
#COPY /var/lib/jenkins/workspace/demoproject/target/hello-1.0.war /var/lib/jenkins/workspace/demoproject/
#COPY hello-1.0.war /usr/local/tomcat/webapps
COPY src/main/java/com/boxfuse/samples/javawarhello/HelloServlet.java /var/lib/jenkins/workspace/java-1.0
CMD ["catalina.sh", "run"]
EXPOSE 8080
#
