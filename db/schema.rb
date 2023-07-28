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

ActiveRecord::Schema[7.0].define(version: 2023_07_28_143720) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "citext"
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "summary"
    t.string "thumbnail_url"
    t.text "content"
    t.bigint "sport_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "articles_teams", id: false, force: :cascade do |t|
    t.bigint "article_id", null: false
    t.bigint "team_id", null: false
    t.index ["article_id", "team_id"], name: "index_articles_teams_on_article_id_and_team_id"
    t.index ["team_id", "article_id"], name: "index_articles_teams_on_team_id_and_article_id"
  end

  create_table "matches", force: :cascade do |t|
    t.string "name"
    t.integer "status"
    t.string "location"
    t.datetime "start_at"
    t.datetime "ends_at"
    t.string "score"
    t.text "story"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches_teams", force: :cascade do |t|
    t.bigint "team_id"
    t.bigint "match_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_matches_teams_on_match_id"
    t.index ["team_id"], name: "index_matches_teams_on_team_id"
  end

  create_table "sports", force: :cascade do |t|
    t.string "name", null: false
    t.integer "sport_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.bigint "sport_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sport_id"], name: "index_teams_on_sport_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.citext "email", null: false
    t.string "password_digest"
    t.string "auth_token_hash"
    t.jsonb "preferences", default: {}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "articles", "sports"
  add_foreign_key "teams", "sports"
end
