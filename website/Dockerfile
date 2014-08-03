FROM trevorparker/nginx
MAINTAINER Trevor Parker <trevor@trevorparker.com>

RUN apt-get update && apt-get -y install bundler ruby ruby-dev

RUN mkdir -p /srv/website
ADD website /opt/website
ADD default /etc/nginx/sites-available/default
RUN cd /opt/website && bundle install
RUN cd /opt/website && jekyll build --destination /srv/website

WORKDIR /etc/nginx
CMD ["nginx"]

