
FROM docker.io/library/tomcat:9@sha256:6ddfc8c16a3f8a1c2c4258d37921e73d0d181b57f79994b5a4eea3a0da8b45d9

WORKDIR /usr/local/tomcat/webapps/

COPY /var/lib/jenkins/workspace/demoproject/target/hello-1.0.war /var/lib/jenkins/workspace/demoproject/

# or

COPY hello-1.0.war /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"]
EXPOSE 8080
#
