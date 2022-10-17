FROM ruby:3.0.3-slim

RUN apt-get update -qq && apt-get install -qq --no-install-recommends \
    curl \
    gnupg2

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -\
&& apt-get update -qq && apt-get install -yq --no-install-recommends \
    build-essential \
    less \
    git \
    libpq-dev \
    postgresql-client \
    libvips42 \
    nodejs \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /himzosch

COPY Gemfile .
COPY Gemfile.lock .
COPY package.json .
COPY package-lock.json .

RUN npm install
RUN gem install bundler --version 2.3.9 && bundle install

# Copy application
COPY . .
RUN mkdir -p tmp && mkdir -p tmp/pids

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
CMD ["rails", "server", "-b", "0.0.0.0"]


