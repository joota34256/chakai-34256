s# テーブル設計

## users テーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| nickname           | string  | null: false |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false |
| name_kanji         | string  | null: false |
| name_kana          | string  | null: false |
| experience_id      | integer | null: false |
| prefecture_id      | integer | null: false |
| address            | string  | null: false |
| phone_number       | string  | null: false |
| birthday           | date    | null: false |

### Association

- has_many :events
- has_many :participants
- has_many :comments

## events テーブル

| Column               | Type       | Options     |
| -------------------- | ---------- | ----------- |
| event_name           | string     | null: false |
| concept              | string     |             |
| detail               | text       |             |
| date                 | date       | null: false |
| number_participant   | integer    | null: false |
| organizer            | string     | null: false |
| school               | string     |             |
| entry_fee            | integer    | null: false |
| belonging            | text       |             |
| target_experience_id | integer    | null: false |
| target_age_id        | integer    | null: false |
| target_gender_id     | integer    | null: false |
| user                 | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :participants
- has_many :comments
- has_one :venue

## venues テーブル

| Column           | Type       | Options     |
| ---------------- | ---------- | ----------- |
| venue_name       | string     | null: false |
| postal_code      | string     |             |
| prefecture_id    | integer    | null: false |
| address          | string     | null: false |
| detail_place     | text       |             |
| event            | references | null: false, foreign_key: true |

### Association

belongs_to :event

## participants テーブル

| Column                | Type       | Options     |
| --------------------- | ---------- | ----------- |
| user                  | references | null: false, foreign_key: true |
| event                 | references | null: false, foreign_key: true |
| comment_participation | text       |             |

### Association

- belongs_to :user
- belongs_to :event

## comments テーブル

| Column           | Type       | Options     |
| ---------------- | ---------- | ----------- |
| comment          | text       | null: false |
| user             | references | null: false, foreign_key: true |
| event            | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :event