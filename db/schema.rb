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

ActiveRecord::Schema.define(version: 20180507225849) do

  create_table "bills", force: :cascade do |t|
    t.integer "user_id"
    t.integer "desk_id"
    t.boolean "payed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["desk_id"], name: "index_bills_on_desk_id"
    t.index ["user_id"], name: "index_bills_on_user_id"
  end

  create_table "desks", force: :cascade do |t|
    t.integer "local_id"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["local_id"], name: "index_desks_on_local_id"
  end

  create_table "dish_bills", force: :cascade do |t|
    t.integer "product_id"
    t.integer "bill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bill_id"], name: "index_dish_bills_on_bill_id"
    t.index ["product_id"], name: "index_dish_bills_on_product_id"
  end

  create_table "locals", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people_bill_dishes", force: :cascade do |t|
    t.integer "bill_dish_id"
    t.string "client_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bill_dish_id"], name: "index_people_bill_dishes_on_bill_dish_id"
  end

  create_table "products", force: :cascade do |t|
    t.integer "local_id"
    t.string "name"
    t.integer "price"
    t.string "product_type"
    t.string "detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["local_id"], name: "index_products_on_local_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "local_id"
    t.string "user"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["local_id"], name: "index_users_on_local_id"
  end

end
