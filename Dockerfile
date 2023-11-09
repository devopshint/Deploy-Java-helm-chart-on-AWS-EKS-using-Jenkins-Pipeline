FROM tomcat:9
WORKDIR /usr/local/tomcat/webapps/
COPY ./target/hello-1.0.war .
