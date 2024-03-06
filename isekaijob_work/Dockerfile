ARG RUBY_VERSION=ruby:3.2.2
FROM $RUBY_VERSION

ARG NODE_VERSION=19
ENV LANG C.UTF-8
ENV TZ Asia/Tokyo

# Node.js と Yarn のインストール
RUN curl -sL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash - \
    && wget --quiet -O - /tmp/pubkey.gpg https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update -qq \
    && apt-get install -y build-essential nodejs yarn

# アプリケーションのディレクトリを作成
RUN mkdir /app
WORKDIR /app

# Bundler と Gem のインストール
RUN gem install bundler
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install

# Yarn でのパッケージインストール
COPY yarn.lock /app/yarn.lock
RUN yarn install

# アプリケーションのコピー
COPY . /app
