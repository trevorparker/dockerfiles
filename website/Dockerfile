FROM trevorparker/nginx
MAINTAINER Trevor Parker <trevor@trevorparker.com>

RUN apt-get -y install apt-transport-https
RUN curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
RUN echo 'deb https://deb.nodesource.com/node wheezy main' > /etc/apt/sources.list.d/nodesource.list
RUN echo 'deb-src https://deb.nodesource.com/node wheezy main' >> /etc/apt/sources.list.d/nodesource.list

RUN apt-get update && apt-get -y install bundler nodejs ruby ruby-dev

RUN mkdir -p /srv/website
RUN npm install -g bower grunt
ADD website /opt/website
WORKDIR /opt/website
RUN bundle install
RUN npm install
RUN bower --allow-root install
RUN grunt build
RUN jekyll build --destination /srv/website

