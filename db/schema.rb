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

ActiveRecord::Schema.define(version: 2022_02_17_164134) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.string "service_name", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "commentators", force: :cascade do |t|
    t.string "name", null: false
    t.text "voice"
    t.text "youtube_icon"
    t.text "youtube_channel_url"
    t.integer "sex", null: false
    t.integer "age", null: false
    t.integer "appearance", null: false
    t.integer "vtuber", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "movie_style_id", null: false
    t.integer "is_forming_a_group", null: false
    t.integer "play_style", null: false
    t.integer "feeling", null: false
    t.integer "famous", null: false
    t.index ["movie_style_id"], name: "index_commentators_on_movie_style_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "title"
    t.text "message", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "diagnosis_histories", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "commentator_id", null: false
    t.datetime "diagnosed_at", default: "2022-03-24 11:18:49", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "mode"
    t.index ["commentator_id"], name: "index_diagnosis_histories_on_commentator_id"
    t.index ["user_id"], name: "index_diagnosis_histories_on_user_id"
  end

  create_table "game_genres", force: :cascade do |t|
    t.string "genre_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "ancestry"
  end

  create_table "games", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "game_genre_id", null: false
    t.index ["game_genre_id"], name: "index_games_on_game_genre_id"
  end

  create_table "movie_styles", force: :cascade do |t|
    t.integer "length", null: false
    t.integer "live", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "playings", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.bigint "commentator_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["commentator_id"], name: "index_playings_on_commentator_id"
    t.index ["game_id"], name: "index_playings_on_game_id"
  end

  create_table "popular_movies", force: :cascade do |t|
    t.text "movie", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "commentator_id", null: false
    t.index ["commentator_id"], name: "index_popular_movies_on_commentator_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.float "rank", default: 1.0, null: false
    t.text "body"
    t.bigint "user_id", null: false
    t.bigint "commentator_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["commentator_id"], name: "index_reviews_on_commentator_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name", null: false
    t.string "avatar"
    t.string "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.integer "access_count_to_reset_password_page", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "commentators", "movie_styles"
  add_foreign_key "diagnosis_histories", "commentators"
  add_foreign_key "diagnosis_histories", "users"
  add_foreign_key "games", "game_genres"
  add_foreign_key "playings", "commentators"
  add_foreign_key "playings", "games"
  add_foreign_key "popular_movies", "commentators"
  add_foreign_key "reviews", "commentators"
  add_foreign_key "reviews", "users"
end
