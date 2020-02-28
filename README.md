# README

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

## usersテーブル

|Column|Type|Option|
|------|----|------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|

### Association

- has_many :machines, through: :users_machines
- has_many :users_machines
- has_many :products,dependent: :destroy

## machinesテーブル

|Column|Type|Option|
|------|----|------|
|machine_name|integer|null: false|
|operating_time|integer|null:false|

### Association

- has_many :users, through: :users_machins
- has_many :users_machines
- has_many :products
   
## users_machinesテーブル
|Column|Type|Option|
|------|----|------|
|user_id|integer|null: false|
|machine_id|integer|null: false|

### Association
- belongs_to :users
- belongs_to :machines

## productsテーブル

|Column|Type|Option|
|------|----|------|
|production_year|integer|null: false|
|production_month|integer|null: false|
|production_day|integer|null: false|
|user_id|integer|null: false|
|user_name|integer|null: false|
|machine_id|integer|null: false|
|product_name|string|null: false|
|number_of_production|string|null: false|
|defective|string|null: false|
|waste|string|null: false|
|memo|text|null: false|


### Association

- belong_to :users
- belong_to :machines
