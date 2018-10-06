FROM  ubuntu
RUN apt-get update -y
RUN apt-get install curl nano net-tools apache2 stress -y
#RUN sed -i -e '/^Listen 80/s/^.*$/Listen 443/' /etc/apache2/ports.conf
EXPOSE 80
CMD apache2ctl -DFOREGROUND
