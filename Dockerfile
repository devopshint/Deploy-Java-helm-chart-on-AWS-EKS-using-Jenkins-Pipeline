FROM tomcat:9
WORKDIR /usr/local/tomcat/webapps/
#COPY /var/lib/jenkins/workspace/demoproject/target/hello-1.0.war /var/lib/jenkins/workspace/demoproject/
#COPY hello-1.0.war /usr/local/tomcat/webapps
ADD ./Deploy-Java-helm-chart-on-AWS-EKS-using-Jenkins-Pipeline/target/hello-1.0.war /Deploy-Java-helm-chart-on-AWS-EKS-using-Jenkins-Pipeline/src/main/webapp/
CMD ["catalina.sh", "run"]
EXPOSE 8080
#
