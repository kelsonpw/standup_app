FROM ruby:2.4.2

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir -p /standup_kid
RUN chown root /standup_kid
USER root
WORKDIR /standup_kid
COPY . /standup_kid
COPY Gemfile /standup_app/Gemfile
COPY Gemfile.lock /standup_app/Gemfile.lock
ENV BUNDLER_VERSION 2.0.2
RUN gem install bundler && bundle install --jobs 20 --retry 5
CMD ["rails", "server"]
