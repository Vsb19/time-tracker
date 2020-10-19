FROM tomcat
COPY ./time-tracker-web-0.5.0-SNAPSHOT.war . /usr/local/tomcat/webapps
CMD "catalina.sh" "run"
EXPOSE 8080

