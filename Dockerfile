# Baseimage 
FROM ubuntu
# BaseImage update 
RUN apt update
# Nginx installing 
RUN apt install nginx -y
#Copy static assets over
COPY index.html /var/www/html/
#Container run 
CMD ["nginx", "-g", "daemon off;"]