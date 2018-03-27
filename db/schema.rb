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

ActiveRecord::Schema.define(version: 20180327164636) do

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.date "start_date"
    t.string "place_to_host_the_event"
    t.integer "Place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Place_id"], name: "index_events_on_Place_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.string "user"
    t.integer "User_id"
    t.string "ticket"
    t.integer "Ticket_id"
    t.boolean "paid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Ticket_id"], name: "index_purchases_on_Ticket_id"
    t.index ["User_id"], name: "index_purchases_on_User_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.string "description"
    t.integer "price"
    t.string "event_that_belongs_to"
    t.integer "Event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Event_id"], name: "index_tickets_on_Event_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "password"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
