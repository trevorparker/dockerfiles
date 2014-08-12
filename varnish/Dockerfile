FROM trevorparker/nginx
MAINTAINER Trevor Parker <trevor@trevorparker.com>

RUN apt-get install -y supervisor varnish

ADD default.vcl /etc/varnish/default.vcl

EXPOSE 6081

