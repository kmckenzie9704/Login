FROM jetty
ADD target/*.war /var/lib/jetty/webapps/Login.war

# local application port
EXPOSE 8080