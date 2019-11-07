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

ActiveRecord::Schema.define(version: 2019_11_07_141746) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.string "nome", limit: 50
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "player_id"
    t.integer "category_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "nome", limit: 30
    t.string "descricao", limit: 100
    t.float "pontuacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disputes", force: :cascade do |t|
    t.bigint "game_id"
    t.bigint "team_id"
    t.boolean "home_team"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_disputes_on_game_id"
    t.index ["team_id"], name: "index_disputes_on_team_id"
  end

  create_table "games", force: :cascade do |t|
    t.datetime "dataJogo"
    t.string "estadio"
    t.string "cidade", limit: 50
    t.string "horario", limit: 5
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "round_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "nome", limit: 100
    t.datetime "dataNascimento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "team_id"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "rounds", force: :cascade do |t|
    t.string "nome", limit: 80
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "nome", limit: 50
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "escudo_file_name"
    t.string "escudo_content_type"
    t.integer "escudo_file_size"
    t.datetime "escudo_updated_at"
  end

  add_foreign_key "disputes", "games"
  add_foreign_key "disputes", "teams"
end
