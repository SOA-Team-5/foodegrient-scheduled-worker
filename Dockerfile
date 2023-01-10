FROM ruby:3.1.2

WORKDIR worker

COPY / .

# RUN apk update && apk upgrade
# RUN apk add --no-cache postgresql-client
# RUN apk add libpq-dev
# RUN apk add libpq
RUN bundle install

CMD rake worker
