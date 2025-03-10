FROM ubuntu:latest
RUN apt-get update && apt-get install -y apache2 zip unzip wget
WORKDIR /var/www/html
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page296/little-fashion.zip
RUN unzip little-fashion.zip
RUN cp -rvf little-fashion/* .
RUN rm -rf little-fashion little-fashion.zip
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
