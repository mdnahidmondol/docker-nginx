FROM ubuntu
RUN apt update
RUN apt install nginx -y
COPY . /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]