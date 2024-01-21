# FROM ruby:3.1.2

# WORKDIR /app

# COPY Gemfile Gemfile.lock ./
# RUN bundle install

# COPY entrypoint.sh /usr/bin/
# RUN chmod +x /usr/bin/entrypoint.sh
# ENTRYPOINT ["entrypoint.sh"]
# EXPOSE 3000

# # CMD ["rails", "server", "-b", "0.0.0.0"]
# CMD ["bundle", "exec", "foreman", "start"]

# 使用するRubyのバージョンを指定
FROM ruby:3.1.2

# 作業ディレクトリを設定
WORKDIR /app

# GemfileとGemfile.lockをコピー
COPY Gemfile Gemfile.lock ./

# パッケージインストールの実行
RUN bundle install

# アプリケーションのファイルをコピー
COPY . .

# entrypoint.shの設定
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

# ポート3000を公開
EXPOSE 3000

# コンテナのデフォルトコマンド
CMD ["bundle", "exec", "foreman", "start"]
