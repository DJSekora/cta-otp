#!/bin/bash

# Update the Tomcat Server with otp changes
# Must be run as root

# Stop the server
service tomcat6 stop

# Remove old wars/folders
rm /usr/share/tomcat6/webapps/otp-analyst-client.war
rm /usr/share/tomcat6/webapps/otp-api-webapp.war
rm /usr/share/tomcat6/webapps/otp-ga-client.war
rm /usr/share/tomcat6/webapps/otp-webapp.war
rm -r -f /usr/share/tomcat6/webapps/otp-analyst-client
rm -r -f /usr/share/tomcat6/webapps/otp-api-webapp
rm -r -f /usr/share/tomcat6/webapps/otp-ga-client
rm -r -f /usr/share/tomcat6/webapps/otp-webapp

#Add new wars/folders
cp ../otp-analyst-client/target/otp-analyst-client.war /usr/share/tomcat6/webapps
cp ../otp-api-webapp/target/otp-api-webapp.war /usr/share/tomcat6/webapps
cp ../otp-ga-client/target/otp-ga-client.war /usr/share/tomcat6/webapps
cp ../otp-webapp/target/otp-webapp.war /usr/share/tomcat6/webapps 

# Start the server again
service tomcat6 start

# Exit
exit
