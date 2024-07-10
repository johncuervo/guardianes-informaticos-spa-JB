ARG RUBY_VERSION=3.3.4
FROM ruby:$RUBY_VERSION-slim as base

RUN apt-get update -qq && \
    apt-get install -y --no-install-recommends \
      npm \
      nodejs \
      build-essential \
      libpq-dev \
      postgresql-client && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*

RUN npm install -g yarn

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

ENTRYPOINT ["/app/bin/docker-entrypoint"]

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]