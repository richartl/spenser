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

ActiveRecord::Schema.define(version: 2018_10_26_004223) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "credit_card_expenses", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "credit_card_id"
    t.index ["credit_card_id"], name: "index_credit_card_expenses_on_credit_card_id"
  end

  create_table "credit_cards", force: :cascade do |t|
    t.string "display_name", null: false
    t.string "brand", null: false
    t.float "credit_limit", null: false
    t.date "pay_date", null: false
    t.date "cutoff_date", null: false
    t.datetime "deleted_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deleted_at"], name: "index_credit_cards_on_deleted_at"
  end

  create_table "transactions", force: :cascade do |t|
    t.float "amount", null: false
    t.string "transable_type"
    t.bigint "transable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["transable_type", "transable_id"], name: "index_transactions_on_transable_type_and_transable_id"
  end

end
