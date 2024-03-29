FROM amd64/ruby:3.0.4

RUN apt-get update -qq && apt-get -y install \
    build-essential \
    libpq-dev

RUN mkdir /app

COPY Gemfile /app
COPY Gemfile.lock /app

WORKDIR /app

RUN gem install bundler && bundle install
