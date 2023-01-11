FROM --platform=linux/amd64 chillmelon/ruby-http:3.1.2

WORKDIR worker

COPY / .

RUN apk --no-cache add libpq-dev make redis

RUN bundle install

CMD rake worker
