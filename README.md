# README

# アプリケーション名
You Don't Know China

# アプリケーション概要
- **旅行先範囲**: 中国内陸
- **機能の主要目的**: 旅行者が中国の旅行目的から具体的な旅行先や目的地を決定するための支援を提供するアプリケーション

# URL:	


# テスト用アカウント:


#  利用方法	
- ユーザ登録
- ブログ投稿
- ブログ情報閲覧

# アプリケーションを作成した背景	
### 課題：
1. **目的地の選定:** ユーザーは中国に旅行したいという希望を持っていますが、どの場所に行くかを決めるのに困難を感じています。旅行の目的地を選定する際に、情報やガイダンスが必要です。
2. **旅行イメージの不明確さ:** 旅行先に何があるか、どのように楽しむことができるかを知りたいと考えています。中国についての情報が不足している可能性があります。

# ペルソナ：
- **性別**: 男女問わず
- **年齢**: 20代から60代まで幅広い年齢層を対象とします。
- **趣味**: 旅行が趣味で、特に中国への旅行に関心があります。
- **仕事**: 連休を取ることが可能な方。休暇を活用して旅行に行くことができる人をターゲットとします。
- **使用者**: 主に日本人向けで、アプリは日本語で提供されます。


# 要件定義
**ユーザー管理機能：**
ユーザー管理機能は、ユーザーアカウントの作成、ログイン、プロフィールの管理など、基本的な機能を提供します。

| 新規登録   | 〇 |
| ログイン   | 〇 |
| マイページ | 〇 |

**ブログ管理機能：**
旅行者が具体的ブログを作成・管理できる機能はアプリケーションの中核です。

| 投稿機能 | 〇 |
| 一覧機能 | 〇 |
| 詳細機能 | 〇 |
| 編集機能 | 〇 |
| 削除機能 | 〇 |

**コメント管理機能：**
コメント機能はユーザー間のコミュニケーションを促進し、旅行に関する情報共有やフィードバックの収集に役立ちます。

| 投稿機能 | 〇 |
| 編集機能 | 〇 |
| 削除機能 | 〇 |

# テーブル設計

## users テーブル

| Column             | Type   | Options                 |
| ------------------ | ------ | ------------------------|
| email              | string | null: false ,Unique:true|
| encrypted_password | string | null: false             |
| name               | string | null: false             |
| profile            | text   | null: false             |
| occupation         | text   | null: false             |
| position           | text   | null: false             |


### Association

- has_many :blogs
- has_many :comments


## blogs テーブル

| Column     | Type      | Options                       |
| ------     | ------    | ----------------------------- |
| title      | string    | null: false                   |
| details    | text      | null: false                   |
| user       | references| null: false,foreign_key: true |


### Association
- has_many :comments


## comments テーブル

| Column      | Type       | Options                        |
| -------     | ---------- | ------------------------------ |
| content     | text       | null: false                    |
| blog        | references | null: false, foreign_key: true |
| user        | references | null: false, foreign_key: true |


### Association

- belongs_to :blog
- belongs_to :user

# ER図
[![Image from Gyazo](https://i.gyazo.com/8dcfdbef3dd37641db44be896bbd470e.png)](https://gyazo.com/8dcfdbef3dd37641db44be896bbd470e)















# 開発環境	使用した言語・サービスを記載。
Ruby on Rails/MySQL/Github/AWS/Visual Studio Code

# 工夫したポイント