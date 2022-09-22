FROM ruby:3.1.2

WORKDIR /app

COPY Gemfile .

RUN bundle install

COPY . .

CMD bin/parser.rb --views=$VIEWS $LOGFILE