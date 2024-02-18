# 注文フォーム作成

＃　dockerコマンド

# 掲示板用のマイグレーションとモデルを作成するジェネレーターコマンド

docker compose run web rails g model board author_name:string title:string body:text

# マイグレーションの実行コマンド

docker compose run web rails db:migrate

# マイグレーションのロールバックコマンド

docker compose run web rails db:rollback

# テストコード実行コマンド
docker-compose exec app bundle exec rspec spec/models