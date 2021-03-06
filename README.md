![サイト紹介画像](https://github.com/tidorisan/TIdori_sushi_app/blob/master/images/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88%202020-09-19%2015.33.57.png)

# Tidori_sushi_app

## サイト概要
利便性を高め、初めて来店するお客様の満足度を向上させることに主眼を置いた、集客を目的とした寿司専門ポータルサイトアプリです。 <br><br>
ここでは登録店舗一覧、詳細、地図情報、各店舗の商品一覧などが記載されています。<br>また会員登録することでお気に入り店舗の登録やお得なクーポン券の利用、店舗に対するコメントを投稿することができます。<br>また会員登録なしでもサイトに掲載する店舗の申請を行うことができます。<br>サイト管理者から申請の許可が下りた場合、会員画面に店舗管理者としてログインしていただき、店舗情報の入力などを行っていただきます。<br><br>

## サイトテーマ
寿司専門飲食店検索サイト<br><br>

## テーマを選んだ理由
浜松市周辺の寿司屋さんを盛り上げたいと考えたからです。集客の対象は出張など初めて浜松駅周辺にいらっしゃった方とし、店舗紹介を行うと共にクーポン機能を実装し、より積極的に運用できることを意識しております。<br><br>


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


## デモと機能
### [注意]
- 画面は２種類に分かれております。通常のサイト利用者様が閲覧する[利用者画面]と利用者画面に表示する店舗やサイトの管理を行う[管理者画面]です。
まず始めに、[利用者画面]のご説明いたします。[利用者画面]のみ非ログイン時での動作内容が記載されておりますが、それ以外の画面はログインすることが前提です。

- ユーザー機能は３つに分類されます。[顧客(customer):利用者画面での会員][店舗管理者(site_admin)：管理者画面での店舗管理者][サイト管理者(site_admin):サイト全体の管理者]

###  [利用者画面]

![利用者画面](https://github.com/tidorisan/TIdori_sushi_app/blob/master/images/%E5%88%A9%E7%94%A8%E8%80%85%E7%94%BB%E9%9D%A2gif.gif)

#### ログイン前
店舗の閲覧やサイトへの店舗の申請が行えますが一部権限管理によって会員登録を行わないと遷移できないページがございます。<br><br>

#### 会員登録後
ログインすることで口コミの閲覧や投稿、削除、お気に入りへの追加、削除、クーポンの閲覧が行えます。<br>
- 口コミ機能(口コミの投稿や閲覧、自分の投稿した内容のみ削除が行えます。また投稿された内容をgoogle api(natural language)によって評価し掲載の有無や表示形式の変更を行うようにしております。
[-0.4~-1.0の内容は店舗詳細画面では表示されない、口コミ一一覧画面ではタイトルのみ表示にしております。])
- お気に入り機能(お気に入りに登録することで、お気に入り一覧ページで登録した店舗を確認することが行えます。削除も可能です。)
- 会員登録することで、クーポンの閲覧と利用が自由に行えます。<br><br>

### 店舗申請について

![店舗申請](https://github.com/tidorisan/TIdori_sushi_app/blob/master/images/%E5%BA%97%E8%88%97%E7%94%B3%E8%AB%8B.gif)

利用者画面から店舗申請を行います。サイト管理者が１週間ほどで申請の許可を判断し、申請時に登録されたメールアドレスに結果をお伝えします。<br>申請が通った方はメールアドレスに記載された申請画面のURLから店舗管理者として会員登録していただきます。<br><br>

###  [管理者画面]
#### 店舗管理者

![店舗管理者](https://github.com/tidorisan/TIdori_sushi_app/blob/master/images/%E5%BA%97%E8%88%97%E7%AE%A1%E7%90%86%E8%80%85.gif)

[会員登録が前提]

- 店舗管理者のユーザー情報入力・編集・閲覧が行えます。
- 店舗登録を行うことが可能です。管理者一人につき複数店舗の登録が可能です。情報入力・編集・閲覧が行えます。サイトの表示についてはサイト表示ステータス[display_status]によって表示される内容の管理を行います。
- 店舗のメニューやクーポンの登録・編集などが行えます。サイトの表示についてはサイト表示ステータス[display_status]によって表示される内容の管理を行います。

#### サイト管理者
![サイト管理者](https://github.com/tidorisan/TIdori_sushi_app/blob/master/images/%E3%82%B5%E3%82%A4%E3%83%88%E7%AE%A1%E7%90%86%E8%80%85gif.gif)

[会員登録が前提]

- 店舗申請の確認や編集を行えます。
- メニュージャンルや店舗ジャンルの登録や編集を行うことが可能です。
- 登録されている全ての店舗やそのメニュー、クーポンの閲覧やサイトの表示の編集を行うことが可能です。
- サイトに登録された全ての会員[顧客・店舗管理者]の情報の閲覧が行えます。
- 利用者画面において全ての口コミを削除を行う権限がございます。<br><br>

##  特徴

![レスポンシブ](https://github.com/tidorisan/TIdori_sushi_app/blob/master/images/%E3%83%AC%E3%82%B9%E3%83%9B%E3%82%9A%E3%83%B3%E3%82%B7%E3%83%95%E3%82%99gif.gif)

全ページレスポンシブ対応しております。

## 作成者

- tidorisan
- はてなブログ(https://tidorisan.hatenablog.com/)






