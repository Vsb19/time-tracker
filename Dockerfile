FROM tomcat:9.0-jdk11-adoptopenjdk-hotspot
ADD /var/lib/jenkins/workspace/time-tracker/web/target/time-tracker-web-0.5.0-SNAPSHOT.war /usr/local/tomcat/webapps/
CMD "catalina.sh" "run"

