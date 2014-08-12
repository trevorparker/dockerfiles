FROM trevorparker/varnish
MAINTAINER Trevor Parker <trevor@trevorparker.com>

RUN apt-get update && apt-get -y install bundler ruby ruby-dev

RUN mkdir -p /srv/website
ADD website /opt/website
ADD default /etc/nginx/sites-available/default
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
RUN cd /opt/website && bundle install
RUN cd /opt/website && jekyll build --destination /srv/website

EXPOSE 80
EXPOSE 6081

CMD ["-n"]
ENTRYPOINT ["supervisord"]

