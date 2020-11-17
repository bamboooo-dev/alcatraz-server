# Alcatraz Server

Alcatraz のサーバーサイド用リポジトリです。

# dev サーバー

[こちら](http://118.27.6.245:8000)にデプロイされています

# 開発

ローカル開発環境のセットアップ

```
docker-compose up
docker-compose exec api rails db:create
docker-compose exec api ridgepole -c config/database.yml --apply -f db/Schemafile
```
