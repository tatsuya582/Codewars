FROM ruby:3.1.3
ENV LANG C.UTF-8
ENV TZ Asia/Tokyo
RUN apt-get update && apt-get install -y \
  build-essential \
  nodejs \
  sqlite3 \
  libsqlite3-dev
WORKDIR /app
COPY Gemfile* ./
RUN bundle install
COPY . .
EXPOSE 4567