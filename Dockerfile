FROM localhost:5000/httpd-parent

EXPOSE 8080

RUN chgrp -R 0 /var/log/httpd /var/run/httpd && chmod -R g=u  /var/log/httpd /var/run/httpd

RUN sed -i "/s/listen 80/listen 8080" /etc/httpd/conf/httpd.conf

USER 1001
