FROM ubuntu:latest

RUN apt update -y && apt install nginx -y

#RUN systemctl start nginx  && systemctl enable nginx

COPY index.html  /var/www/html/index.html

EXPOSE 80

CMD ["nginx", "-g" , "daemon off;"]



