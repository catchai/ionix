FROM nginx

RUN rm -f /etc/nginx/conf.d/default.conf

WORKDIR /var/www/html
COPY index.html /var/www/html
RUN chmod 755 /var/www/html/index.html

COPY nginx.conf /etc/nginx/conf.d/

COPY ser.key /etc/nginx/
COPY ser.pem /etc/nginx/

COPY nginx.conf /etc/nginx/

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]

COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]