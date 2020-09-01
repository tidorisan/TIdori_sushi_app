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

ActiveRecord::Schema.define(version: 2020_08_31_132011) do

  create_table "coupons", force: :cascade do |t|
    t.text "reason", null: false
    t.text "detail", null: false
    t.boolean "enabled_status", default: true, null: false
    t.string "image_id", default: ""
    t.string "target", default: "", null: false
    t.text "writing", null: false
    t.integer "expiration_date", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "store_id"
  end

  create_table "favorite_stores", force: :cascade do |t|
    t.integer "store_id", null: false
    t.integer "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menu_genres", force: :cascade do |t|
    t.integer "store_menu_id"
    t.string "genre_name", default: "", null: false
    t.boolean "display_status", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "store_admin_applications", force: :cascade do |t|
    t.string "address", default: "", null: false
    t.string "postal_code", null: false
    t.string "store_name", default: "", null: false
    t.string "kana_store_name", default: "", null: false
    t.string "phone_number", null: false
    t.string "branch_name", default: "", null: false
    t.string "kana_branch_name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "family_name", default: "", null: false
    t.string "first_name", default: "", null: false
    t.string "kana_family_name", default: "", null: false
    t.string "kana_first_name", default: "", null: false
    t.integer "birthday", null: false
    t.integer "job_title", null: false
    t.boolean "permit_to_store_manager", default: false, null: false
    t.boolean "get_restaurant_sales_permit_form", default: false, null: false
    t.boolean "related_with_antisocial_force", default: false, null: false
    t.boolean "mannaers_industry", default: false, null: false
    t.boolean "process_status", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "store_buzzs", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "store_id", null: false
    t.string "title", default: "", null: false
    t.text "detail", null: false
    t.string "image_id"
    t.integer "visit_date"
    t.integer "use_time", null: false
    t.integer "pay_price", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "store_genres", force: :cascade do |t|
    t.string "genre_name", null: false
    t.boolean "display_status", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "store_menus", force: :cascade do |t|
    t.integer "store_id", null: false
    t.string "name", default: "", null: false
    t.text "comment", null: false
    t.integer "tax_excluded_price", default: 0, null: false
    t.boolean "display_status", default: true, null: false
    t.integer "menu_genre_id", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "address", default: "", null: false
    t.float "latitude"
    t.float "longitude"
    t.string "postal_code", null: false
    t.string "store_name", default: "", null: false
    t.string "kana_store_name", default: "", null: false
    t.string "phone_number", null: false
    t.string "branch_name", default: "", null: false
    t.string "kana_branch_name", default: "", null: false
    t.string "image_id", default: "", null: false
    t.text "reservation_of_considerations", null: false
    t.integer "reservation", default: 0, null: false
    t.text "traffic_method", null: false
    t.string "business_day", default: "", null: false
    t.string "regular_holiday", default: "", null: false
    t.string "consumption_budget", default: "", null: false
    t.string "equipment", default: "", null: false
    t.boolean "private_room", null: false
    t.boolean "reserved", null: false
    t.integer "parking", default: 0, null: false
    t.integer "no_smoking", null: false
    t.text "home_page", null: false
    t.text "news", null: false
    t.boolean "display_status", default: true, null: false
    t.integer "store_genre_id", null: false
    t.string "credit_card", default: "", null: false
    t.string "e_money", default: "", null: false
    t.text "comment", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "family_name", default: "", null: false
    t.string "first_name", default: "", null: false
    t.string "kana_family_name", default: "", null: false
    t.string "kana_first_name", default: "", null: false
    t.integer "birthday", default: 0, null: false
    t.integer "job_title", default: 0, null: false
    t.boolean "permit_to_store_manager", default: false, null: false
    t.boolean "get_restaurant_sales_permit_form", default: false, null: false
    t.boolean "related_with_antisocial_force", default: false, null: false
    t.boolean "mannaers_industry", default: false, null: false
    t.string "nickname", default: "", null: false
    t.string "image_id", default: "", null: false
    t.boolean "unsubscribe_status", default: true, null: false
    t.integer "role", default: 1, null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
