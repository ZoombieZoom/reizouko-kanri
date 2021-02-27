## users table

|Column|Type|Options|
|------|----|-------|
| nickname | string | null: false |
| encrypted_password | string | null: false |
| email | string | null: false unique: true |
| birthday | date | null: false |

### Association
has_many :items
belongs_to :room

## items table

|Column|Type|Options|
|------|----|-------|
| name | string | null: false |
| stock | integer | null: false |
| sell_by | date | null: false |
| category | string | null: false |
| user | references | foreign_key: true |

### Association
belongs_to :user
belongs_to :room

## fridges table

|Column|Type|Options|
|------|----|-------|
| item | references | foreign_key: true |
| user | references | foreign_key: true |


### Association
has_many :users
has_many :items 