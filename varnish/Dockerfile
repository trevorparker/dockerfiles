FROM trevorparker/debian
MAINTAINER Trevor Parker <trevor@trevorparker.com>

RUN apt-get install -y supervisor varnish
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
ADD default.vcl /etc/varnish/default.vcl
EXPOSE 6081
CMD ["-n"]
ENTRYPOINT ["supervisord"]

