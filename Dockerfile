FROM tomcat:9.0-jdk11-adoptopenjdk-hotspot
COPY ./time-tracker-web-0.5.0-SNAPSHOT.war /usr/local/tomcat/webapps
CMD "catalina.sh" "run"

