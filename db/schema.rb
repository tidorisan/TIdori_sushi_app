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

ActiveRecord::Schema.define(version: 2020_08_28_033202) do

  create_table "favorite_stores", force: :cascade do |t|
    t.integer "store_id", null: false
    t.integer "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "store_admin_applications", force: :cascade do |t|
    t.string "address", default: "", null: false
    t.integer "postal_code", default: 0, null: false
    t.string "store_name", default: "", null: false
    t.string "kana_store_name", default: "", null: false
    t.integer "phone_number", default: 0, null: false
    t.string "branch_name", default: ""
    t.string "kana_branch_name", default: ""
    t.string "email", default: "", null: false
    t.string "family_name", default: "", null: false
    t.string "first_name", default: "", null: false
    t.string "kana_family_name", default: "", null: false
    t.string "kana_first_name", default: "", null: false
    t.integer "birthday", null: false
    t.integer "job_title", null: false
    t.boolean "permit_to_store_manager", null: false
    t.boolean "get_restaurant_sales_permit_form", null: false
    t.boolean "related_with_antisocial_force", null: false
    t.boolean "mannaers_industry", null: false
    t.boolean "process_status", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "store_buzzs", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "store_id", null: false
    t.string "title", default: "", null: false
    t.text "detail", default: "", null: false
    t.string "image_id"
    t.integer "visit_date"
    t.integer "use_time", null: false
    t.integer "pay_price", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "address", default: "", null: false
    t.float "latitude"
    t.float "longitude"
    t.integer "postal_code", default: 0, null: false
    t.string "store_name", default: "", null: false
    t.string "kana_store_name", default: "", null: false
    t.integer "phone_number", default: 0, null: false
    t.string "branch_name", default: "", null: false
    t.string "kana_branch_name", default: "", null: false
    t.string "image_id", default: "", null: false
    t.integer "store_genre", default: 0, null: false
    t.text "reservation_of_considerations", default: "", null: false
    t.integer "reservation", default: 0, null: false
    t.text "traffic_method", default: "", null: false
    t.string "business_day", default: "", null: false
    t.string "regular_holiday", default: "", null: false
    t.string "consumption_budget", default: "", null: false
    t.integer "credit_card_id", default: 0, null: false
    t.integer "e_bill_id", default: 0, null: false
    t.string "equipment", default: "", null: false
    t.boolean "private_room", null: false
    t.boolean "reserved", null: false
    t.integer "parking", default: 0, null: false
    t.integer "no_smoking", null: false
    t.integer "store_equipment_id", default: 0, null: false
    t.text "home_page", default: "", null: false
    t.text "news", default: "", null: false
    t.boolean "display_status", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
