FROM ubuntu:18.04

RUN apt-get update \
 && apt-get install -y ruby ruby-dev build-essential \
 && gem install bundler
RUN useradd --create-home jekyll
COPY ./entrypoint.sh /usr/local/bin/
USER jekyll
RUN mkdir -p /home/jekyll/project
WORKDIR /home/jekyll/project
RUN bundle init && bundle install --path vendor/bundle && bundle add jekyll
COPY . ./
CMD ["bundle", "exec", "jekyll", "serve", "--host=0.0.0.0", "--port=4000"]
