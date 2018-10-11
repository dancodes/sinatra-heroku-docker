FROM ruby:2.2.0


RUN apt-get update -qq && apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y -qq postgresql postgresql-contrib libpq-dev cmake postgresql-server-dev-9.4 apt-transport-https

ENV CI true

# Heroku
RUN echo "deb https://cli-assets.heroku.com/branches/stable/apt ./" > /etc/apt/sources.list.d/heroku.list
RUN wget -O- https://cli-assets.heroku.com/apt/release.key | apt-key add -
RUN apt-get update -qq && apt-get install -y heroku

# Sinatra gems
RUN mkdir -p /setup
WORKDIR /setup
COPY Gemfile /setup/Gemfile
COPY Gemfile.lock /setup/Gemfile.lock

RUN gem install bundler --no-ri --no-rdoc
RUN bundle install
RUN gem install dpl

RUN rm -rf /var/lib/apt/lists/*