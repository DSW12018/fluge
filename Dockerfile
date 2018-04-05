FROM ruby:2.4.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /fluge
WORKDIR /fluge
COPY Gemfile /fluge/Gemfile
COPY Gemfile.lock /fluge/Gemfile.lock

RUN gem install bundler
RUN bundle package --all

COPY . /fluge
