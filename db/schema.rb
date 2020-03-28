# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20200323045210) do

  create_table "date_products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "dated_id"
    t.string   "product_no"
    t.string   "producer"
    t.string   "producer02"
    t.integer  "number_of_production"
    t.integer  "defective"
    t.integer  "waste"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["dated_id"], name: "index_date_products_on_dated_id", using: :btree
  end

  create_table "dateds", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "description",      limit: 65535
    t.string   "machine_number",                                null: false
    t.integer  "total_production",                              null: false
    t.integer  "production_year",                default: 2020, null: false
    t.integer  "production_month",               default: 1,    null: false
    t.integer  "production_day",                 default: 1,    null: false
    t.integer  "operating_time",                 default: 0,    null: false
    t.integer  "user_id",                                       null: false
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.index ["user_id"], name: "index_dateds_on_user_id", using: :btree
  end

  create_table "machine_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "machine_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["machine_id"], name: "index_machine_users_on_machine_id", using: :btree
    t.index ["user_id"], name: "index_machine_users_on_user_id", using: :btree
  end

  create_table "machines", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_machines_on_name", unique: true, using: :btree
  end

  create_table "product_collections", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "product_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_no"], name: "index_products_on_product_no", unique: true, using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                                null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["name"], name: "index_users_on_name", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "date_products", "dateds"
  add_foreign_key "dateds", "users"
  add_foreign_key "machine_users", "machines"
  add_foreign_key "machine_users", "users"
end
