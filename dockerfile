FROM tomcat
ADD /var/lib/jenkins/workspace/tt/web/target/time-tracker-web-0.5.0-SNAPSHOT.war /usr/local/tomcat/webapps
CMD "catalina.sh" "run"
EXPOSE 8080

