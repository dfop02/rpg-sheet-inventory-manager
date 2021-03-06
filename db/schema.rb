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

ActiveRecord::Schema.define(version: 2019_07_29_171053) do

  create_table "character_classes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "strength", default: 0, null: false
    t.integer "dexterity", default: 0, null: false
    t.integer "constitution", default: 0, null: false
    t.integer "intelligence", default: 0, null: false
    t.integer "wisdom", default: 0, null: false
    t.integer "charisma", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "character_races", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "strength", default: 0, null: false
    t.integer "dexterity", default: 0, null: false
    t.integer "constitution", default: 0, null: false
    t.integer "intelligence", default: 0, null: false
    t.integer "wisdom", default: 0, null: false
    t.integer "charisma", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "strength", default: 0, null: false
    t.integer "dexterity", default: 0, null: false
    t.integer "constitution", default: 0, null: false
    t.integer "intelligence", default: 0, null: false
    t.integer "wisdom", default: 0, null: false
    t.integer "charisma", default: 0, null: false
    t.integer "level", default: 1, null: false
    t.integer "character_class_id"
    t.integer "character_race_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "item_type"
    t.integer "character_id"
    t.boolean "active", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
