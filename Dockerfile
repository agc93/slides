FROM httpd:2.4-alpine
RUN echo 'Include conf/*.app.conf' >> /usr/local/apache2/conf/httpd.conf
COPY ./*.html /usr/local/apache2/htdocs/
COPY ./httpd.app.conf /usr/local/apache2/conf/httpd.app.conf
EXPOSE 80