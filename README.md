## アプリケーション名
とにかくホメてくれるtodoリスト

## アプリケーション概要
- 編集が共有できるto doリスト
- item(to doリストの項目)を達成したら、ランダムでメッセージが出てきてユーザーをとにかくホメてくれる。

## 本番環境
　URL:
　ログイン情報(テスト用)
　　ニックネーム：
　　E-mail:
　　パスワード：

## 制作背景
　同居している中で、家事や買い物などの負担が偏っている問題と、to doリストが続かない問題を解消したいと考えた。
前者の問題には、to doリストを複数人に共有して、編集可能とすることで解決することを考えた。
後者の問題には、itemを達成したらアプリケーションが褒めてくれることで達成感や面白さを与えることで解決することを考えた。
# このアプリを利用するユーザーのペルソナ
- 性別：問わず
- 年齢：12~60代。ある程度自律性があり、同居人がいる年代。
- 職業：問わず。同居人がいる人

## DEMO
各画面の実装画像や動画。その概要。

## 工夫したポイント
開発後に記入

## 使用技術(開発環境)
### バックエンド
Ruby, Ruby on Rails
### フロントエンド
Html, Css, JavaScript
### データベース
MySQL
### インフラ

### Webサーバ本番環境

### アプリケーションサーバ(本番環境)
unicorn
### ソース管理
GitHub, GitHubDesktop
### テスト
RSpec
### エディタ
VSCode

## 課題や今後実装したい機能

## DB設計
## usersテーブル
ユーザー情報の保存する。
| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false, unique: true |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association
- has_many :user_lists
- has_many :lists, through: :user_lists

## listsテーブル
to doリストのタイトルと共有したユーザーを保存する。
| Column  | Type    | Options                        |
| ------- | ------- | ------------------------------ |
| title   | string  | null: false                    |
| user_id | integer | null: false, foreign_key: true |

### Association
- has_many :tasks
- has_many :user_lists
- has_many :users, through: :user_lists

## tasksテーブル
to doリスト内の項目を保存する。
| Column  | Type    | Options                        |
| ------- | ------- | ------------------------------ |
| item    | string  | null: false                    |
| list_id | integer | null: false, foreign_key: true |

### Association
- belongs_to :list

## user_listsテーブル(userとlistの中間テーブル) 
| Column  | Type    | Options                        |
| ------- | ------- | ------------------------------ |
| user_id | integer | null: false, foreign_key: true |
| list_id | integer | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :list
