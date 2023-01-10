FROM chillmelon/ruby-http:3.1.3-alpine

WORKDIR worker

COPY / .

RUN bundle install

CMD rake worker
