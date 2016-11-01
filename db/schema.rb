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

ActiveRecord::Schema.define(version: 20161031200212) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "catalogues", force: :cascade do |t|
    t.integer  "eventsById",              array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["eventsById"], name: "index_catalogues_on_eventsById", using: :gin
  end

  create_table "day_planners", force: :cascade do |t|
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer  "userId"
    t.integer  "expectedNum"
    t.string   "name"
    t.float    "ticketPrice"
    t.text     "description"
    t.datetime "dateTime"
    t.integer  "affiliation",                array: true
    t.integer  "eventType",                  array: true
    t.string   "userIds",                    array: true
    t.boolean  "isLit"
    t.integer  "numAddedToCal"
    t.integer  "numCheckIn"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["affiliation"], name: "index_events_on_affiliation", using: :gin
    t.index ["eventType"], name: "index_events_on_eventType", using: :gin
    t.index ["userIds"], name: "index_events_on_userIds", using: :gin
  end

  create_table "eventsMap", force: :cascade do |t|
    t.integer  "map_id"
    t.integer  "userId"
    t.integer  "expectedNum"
    t.string   "name"
    t.float    "ticketPrice"
    t.text     "description"
    t.datetime "dateTime"
    t.integer  "affiliation",   array: true
    t.integer  "eventType",     array: true
    t.string   "userIds",       array: true
    t.boolean  "isLit"
    t.integer  "numAddedToCal"
    t.integer  "numCheckIn"
    t.index ["map_id"], name: "index_eventsMap_on_map_id", using: :btree
  end

  create_table "filters", force: :cascade do |t|
    t.integer  "user_id"
    t.boolean  "isOn"
    t.integer  "preferences",              array: true
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_filters_on_user_id", using: :btree
  end

  create_table "locations", force: :cascade do |t|
    t.integer  "event_id"
    t.string   "building"
    t.string   "room"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_locations_on_event_id", using: :btree
  end

  create_table "maps", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offers", force: :cascade do |t|
    t.integer  "event_id"
    t.string   "name"
    t.integer  "numUsed"
    t.integer  "maxUse"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_offers_on_event_id", using: :btree
  end

  create_table "sixty_day_planners", force: :cascade do |t|
    t.integer  "user_id"
    t.date     "startDate"
    t.date     "endDate"
    t.integer  "eventsById",              array: true
    t.integer  "freeTimes",               array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sixty_day_planners_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.string   "password"
    t.string   "gmail"
    t.string   "phoneNum"
    t.string   "confirmationCode"
    t.boolean  "isConfirmed"
    t.integer  "affiliation",                   array: true
    t.integer  "userEventsById",                array: true
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["affiliation"], name: "index_users_on_affiliation", using: :gin
    t.index ["userEventsById"], name: "index_users_on_userEventsById", using: :gin
  end

end
