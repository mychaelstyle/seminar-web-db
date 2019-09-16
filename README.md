# seminar-web-db

初心者向けDB+PHPセミナーで使うプロジェクトです。クローンして、PHPプログラムをwwwフォルダ内に配置することで、http://localhost:18080/　配下でアクセスできるようになります。

## ファイル構成

    seminar-web-db
      L README.md
      L Dockerfile
      L docker-compose.yml
      L php.ini
      L db
          L data
          L init
              L 0.create_db_tables.sql
      L www
          L example.php

1. dbフォルダ内はmysqlのdockerインスタンスからデータ永続化用にマウントされます。
2. wwwフォルダはapache+PHP7のdockerインスタンスからマウントされてドキュメントルートになります。

## How to use

コマンドラインで本フォルダ内に移動し、下記コマンドでdockerインスタンスを起動してください。mysqlサーバーとapacheサーバーのインスタンスが起動します。

    docker-compose up

初めて起動する場合はビルドの時間がかかる場合があります。

# セミナー内容

### 1st season データベース
1. データベースの基礎
2. mysql
3. SQL操作実践

### 2nd season HTMLとCSS
1. HTMLについて
2. CSSについて
3. ページ作成実習

### 3rd season PHPの基礎と実践
1. PHPの基礎
2. PHPの構文
3. PHPプログラム実践
4. データベース接続
5. 掲示板を作ってみよう

### 4th season フレームワーク
1. フレームワークとは
2. Laravel実践１ MVC・DIの考え方と構築
3. Laravel実践２ ORMとCRUD処理

