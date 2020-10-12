From tomcat
ADD /var/lib/jenkins/workspace/tt-1/web/target/time-tracker-web-0.5.0-SNAPSHOT.war /usr/local/tomcat/webapps
CMD catalina.sh run
