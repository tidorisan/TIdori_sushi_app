![サイト紹介画像](https://github.com/tidorisan/TIdori_sushi_app/blob/master/images/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88%202020-09-19%2015.33.57.png)

# Tidori_sushi_app

## サイト概要
利便性を高め、初めて来店するお客様の満足度を向上させることに主眼を置いた、集客を目的とした寿司専門ポータルサイトアプリです。 <br><br>
ここでは登録店舗一覧、詳細、地図情報、各店舗の商品一覧などが記載されています。<br>また会員登録することでお気に入り店舗の登録やお得なクーポン券の利用、店舗に対するコメントを投稿することができます。<br>また会員登録なしでもサイトに掲載する店舗の申請を行うことができます。<br>サイト管理者から申請の許可が下りた場合、会員画面に店舗管理者としてログインしていただき、店舗情報の入力などを行っていただきます。<br><br>

## サイトテーマ
寿司専門飲食店検索サイト<br><br>

## テーマを選んだ理由
浜松市周辺の寿司屋さんを盛り上げたいと考えたからです。集客の対象は出張など初めて浜松駅周辺にいらっしゃった方とし、店舗紹介を行うと共にクーポン機能を実装しより積極的に運用できることを意識しております。<br><br>


## ターゲットユーザー<br><br>
出張などで初めて浜松市中区中央浜松駅周辺にいらっしゃった方。<br>
20代〜30代。<br><br>

## 主な利用シーン
飲食店検索やクーポン券の使用。<br><br>


## 機能一覧

###  開発環境

- OS Catalina(MacOS)
- Ruby on Rails 5.2.4
- git version 2.26.2
- rails 5.2.4.3

### gem

- devise
- refile
- refile-mini_magick
- pry-byebug
- mysql2
- ransack
- geocoder
- bootstrap-sass  3.3.6
- jquery-rails
- rails-i18n 5.1
- kaminari
- rubocop-airbnb<br><br>

### google api

- google map api
- natural language

[https://docs.google.com/spreadsheets/d/148TnWTL1GlVmvjwwwHQRM3DVWHtoeeEl4TnavOzKhh0/edit#gid=0]<br><br>


## デモ
###  利用者画面
#### ログイン前・会員登録後
![利用者画面](https://github.com/tidorisan/TIdori_sushi_app/blob/master/images/%E5%88%A9%E7%94%A8%E8%80%85%E7%94%BB%E9%9D%A2gif.gif)

会員登録せずに店舗やサイトへの店舗の申請が行えます。<br>ログインすることで口コミの閲覧や投稿、お気に入りへの追加が行えます。<br>口コミにおいて投稿された内容をgoogle api(natural language)によって評価し掲載の有無や表示形式の変更を行うようにしております。<br><br>


### 店舗申請について

![店舗申請](https://github.com/tidorisan/TIdori_sushi_app/blob/master/images/%E5%BA%97%E8%88%97%E7%94%B3%E8%AB%8B.gif)

利用者画面から店舗申請を行います。サイト管理者が１週間ほどで申請の許可を判断し、申請時に登録されたメールアドレスに結果をお伝えします。<br>申請が通った方はメールアドレスに記載された申請画面のURLから店舗管理者として会員登録していただきます。<br><br>

###  管理者画面
#### 店舗管理者
![店舗管理者](https://github.com/tidorisan/TIdori_sushi_app/blob/master/images/%E5%BA%97%E8%88%97%E7%AE%A1%E7%90%86%E8%80%85.gif)

会員登録し、会員情報を入力していただいた後に店舗登録やメニュー登録などを行うことができます。<br><br>

#### サイト管理者
![サイト管理者](https://github.com/tidorisan/TIdori_sushi_app/blob/master/images/%E3%82%B5%E3%82%A4%E3%83%88%E7%AE%A1%E7%90%86%E8%80%85gif.gif)

ログインすることで、店舗申請の確認やメニュージャンルや店舗ジャンルの編集などが行えます。また会員情報を一覧するとも可能です。<br><br>

##  特徴

![レスポンシブ](https://github.com/tidorisan/TIdori_sushi_app/blob/master/images/%E3%83%AC%E3%82%B9%E3%83%9B%E3%82%9A%E3%83%B3%E3%82%B7%E3%83%95%E3%82%99gif.gif)

全ページレスポンシブ対応しております。

## 作成者

- tidorisan
- はてなブログ(https://tidorisan.hatenablog.com/)






