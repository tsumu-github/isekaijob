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

ActiveRecord::Schema[7.0].define(version: 2024_02_23_063851) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "choices", force: :cascade do |t|
    t.bigint "question_id", null: false
    t.text "choice_text"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_choices_on_question_id"
  end

  create_table "girudo_questions", force: :cascade do |t|
    t.text "girudo_group"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_profiles", force: :cascade do |t|
    t.bigint "result_id", null: false
    t.text "image_url_magicalgirl_gazo"
    t.text "image_url_magicalgirl_name"
    t.text "content"
    t.text "status"
    t.text "strengths"
    t.text "zyakuten"
    t.text "refresh"
    t.text "job"
    t.text "rare"
    t.text "compatibility"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["result_id"], name: "index_job_profiles_on_result_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "question_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "girudo_question_id", null: false
    t.index ["girudo_question_id"], name: "index_questions_on_girudo_question_id"
  end

  create_table "results", force: :cascade do |t|
    t.text "result_text"
    t.integer "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "total_scores", force: :cascade do |t|
    t.integer "total_score", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_choices", force: :cascade do |t|
    t.bigint "question_id", null: false
    t.bigint "choice_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["choice_id"], name: "index_user_choices_on_choice_id"
    t.index ["question_id"], name: "index_user_choices_on_question_id"
  end

  add_foreign_key "choices", "questions"
  add_foreign_key "job_profiles", "results"
  add_foreign_key "questions", "girudo_questions"
  add_foreign_key "user_choices", "choices"
  add_foreign_key "user_choices", "questions"
end
