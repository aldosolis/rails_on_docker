ARG RUBY_VERSION
FROM ruby:$RUBY_VERSION-alpine

RUN apk add --no-cache --update \
    build-base \
    linux-headers \
    git \
    postgresql-dev \
    nodejs \
    yarn \
    tzdata

ARG RAILS_VERSION
RUN gem install rails:$RAILS_VERSION

ARG APP_PATH
WORKDIR $APP_PATH

EXPOSE 3000
