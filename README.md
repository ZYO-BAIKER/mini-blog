# README

# アプリケーション名　
エンジニアミニブログ

# アプリケーション概要
投稿者を選択し、過去に投稿したものを全て閲覧できる。
twitterでブログの投稿のみが出来るイメージ
ブログはタイトル名と本文と画像を添付可能

# URL

# テスト用アカウント

# 利用方法

# 目指した課題解決
Qitta未満 twitter以上のイメージで簡易的なアウトプットに活用するためのもの。
いきなりQittaでアウトプットするのは、ハードルが高いと感じる人も少なくないはず。
初歩段階として　twitter→Qittaの順でアウトプットする中間的段階を用意

# 洗い出した要件
・ユーザー管理機能
新規登録、編集、ログイン・ログアウトが可能

・ミニブログ作成・投稿機能
タイトル、説明文、ジャンルを作成できる。

・


# 実装した機能についてのGIFと説明

# 実装予定の機能

# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |

- has_many :tweets

## tweets テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| title  | string | null: false |
| text   | text   | null: false |
| category_id | integer| null: false |

- belongs_to :user
- has_many :comments

## comments テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| comment | string     |                                |

- belongs_to :tweet
- belongs_to :user
