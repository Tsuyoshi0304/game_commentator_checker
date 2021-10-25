# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_25_095336) do

  create_table "commentators", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.text "voice", null: false
    t.text "youtube_icon", null: false
    t.integer "sex", null: false
    t.integer "age", null: false
    t.boolean "single_play", null: false
    t.boolean "enthusiastic_play", null: false
    t.boolean "appearance", null: false
    t.boolean "vtuber", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "movie_style_id", null: false
    t.index ["movie_style_id"], name: "index_commentators_on_movie_style_id"
  end

  create_table "games", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title", null: false
    t.string "genre", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "movie_styles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.boolean "short", null: false
    t.boolean "single_shot", null: false
    t.boolean "live", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "playings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.bigint "commentator_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["commentator_id"], name: "index_playings_on_commentator_id"
    t.index ["game_id"], name: "index_playings_on_game_id"
  end

  create_table "popular_movies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.text "movie", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "commentator_id", null: false
    t.index ["commentator_id"], name: "index_popular_movies_on_commentator_id"
  end

  add_foreign_key "commentators", "movie_styles"
  add_foreign_key "playings", "commentators"
  add_foreign_key "playings", "games"
  add_foreign_key "popular_movies", "commentators"
end
