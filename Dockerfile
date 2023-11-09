FROM tomcat:9
WORKDIR /usr/local/tomcat/webapps/
ADD /home/ubuntu/Deploy-Java-helm-chart-on-AWS-EKS-using-Jenkins-Pipeline/target/hello-1.0.war /home/ubuntu/Deploy-Java-helm-chart-on-AWS-EKS-using-Jenkins-Pipeline/src/main/webapp
CMD ["catalina.sh", "run"]
EXPOSE 8080
#
