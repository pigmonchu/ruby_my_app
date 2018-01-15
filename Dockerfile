FROM ruby:2.4.0

# Instalar rails

Run apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /myapp
WORKDIR /myapp

RUN gem install bundler --pre

ADD . /myapp

RUN bundle install

