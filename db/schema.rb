# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_28_142627) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boards", force: :cascade do |t|
    t.string "name", null: false
    t.string "side", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "games", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "scores", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.bigint "player_id", null: false
    t.bigint "board_id", null: false
    t.boolean "win", default: false, null: false
    t.integer "war", default: 0, null: false
    t.integer "coins", default: 0, null: false
    t.integer "wonder", default: 0, null: false
    t.integer "yellow", default: 0, null: false
    t.integer "green", default: 0, null: false
    t.integer "blue", default: 0, null: false
    t.integer "violet", default: 0, null: false
    t.integer "black", default: 0, null: false
    t.integer "leader", default: 0, null: false
    t.integer "other", default: 0, null: false
    t.integer "total", default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["board_id"], name: "index_scores_on_board_id"
    t.index ["game_id"], name: "index_scores_on_game_id"
    t.index ["player_id"], name: "index_scores_on_player_id"
  end

  add_foreign_key "scores", "boards"
  add_foreign_key "scores", "games"
  add_foreign_key "scores", "players"
end
