FROM ruby:3.0.2
RUN apt-get update -qq && apt-get install -y nodejs
RUN mkdir /site
WORKDIR /site
ADD Gemfile /site/Gemfile
ADD Gemfile.lock /site/Gemfile.lock
RUN bundle install
ADD . /site