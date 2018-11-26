FROM ruby:2.3.0-alpine
RUN apk update && apk upgrade && \
    apk add --no-cache git
WORKDIR /usr/src/
RUN git clone https://github.com/plarivee/cisco_acl_web.git
WORKDIR /usr/src/cisco_acl_web
RUN bundle install
RUN chmod +x ./lib/application.rb
EXPOSE 4567
ENTRYPOINT ["ruby","./lib/application.rb"]
