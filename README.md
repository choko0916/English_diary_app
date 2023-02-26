# English Diary

## English Diaryとは？
英会話能力を向上させたいと思っている英語学習者向けのアプリです！<br><br>

英語での表現力を高めるため「英語日記」を書くということが流行っています。<br>
私自身もInstagramを利用して英語日記を投稿していたのですが、<br>
英語日記に継続して取り組む間に、「こんな機能があったらいいのにな」<br>
と思ったことがあったので、英語日記アプリを作成してみました。<br><br>

私自身、TOEICでは900点以上点数を取ることが出来るものの、いざ英会話！となると<br>
全く言葉が出てこず、もどかしい思いを何度もしてきました。<br>
英語日記に継続して取り組むことで、「これ、英語で何て言うんだろう？」と思うことを減らすことが出来ました。<br><br>

英語日記がスピーキング能力向上の近道であると信じています。<br>
English Diaryを利用し、みんなで英会話能力を向上させましょう！<br>


## デモ
#### 英語日記、調べた英単語投稿機能
* __ __<br>

#### 英単語テスト機能
* __ __<br>


## 使用技術

* __開発環境__
  * __Docker 20.10.16 / docker-compose 3.9__

* __フロントエンド__
  * __HTML / tailwind.css / JavaScript__

* __バックエンド__
  * __Ruby 3.1.0__
  * __Rails 7.0.4.1__

* __インフラ__
  * __CircleCI__
  * __PostgreSQL 13.9__
  * __AWS__ (S3,IAM)


## 機能
* __ユーザー登録関連__(devise)
  * 新規登録、プロフィール編集機能
  * 削除機能
  * ログイン、ログアウト機能
    * ゲストユーザーログイン機能
  * ユーザーマイページ
   


各テーブルのカラムについては[テーブル定義書]()を参照ください。

## インストール方法
```
$ git clone 
$ cd 
$ docker-compose build
$ docker-compose up -d
$ docker-compose run web rails db:create
$ docker-compose run web rails db:migrate
$ docker-compose run web rails db:seed

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
