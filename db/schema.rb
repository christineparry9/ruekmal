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

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.text "content"
    t.bigint "question_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "correct"
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "reading_time"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "challenges", force: :cascade do |t|
    t.integer "number_of_points"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.string "category"
    t.string "video_url"
    t.integer "length"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "program_exercises", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "exercise_id", null: false
    t.bigint "program_id", null: false
    t.index ["exercise_id"], name: "index_program_exercises_on_exercise_id"
    t.index ["program_id"], name: "index_program_exercises_on_program_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string "name"
    t.integer "program_length"
    t.integer "standing_points_goal"
    t.float "standing_goal"
    t.float "overal_standing_goal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "standing_goals", force: :cascade do |t|
    t.boolean "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "program_id", null: false
    t.bigint "user_id", null: false
    t.index ["program_id"], name: "index_standing_goals_on_program_id"
    t.index ["user_id"], name: "index_standing_goals_on_user_id"
  end

  create_table "user_challenges", force: :cascade do |t|
    t.boolean "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.integer "number_of_points"
    t.boolean "standing_status"
    t.bigint "workplace_id", null: false
    t.bigint "program_id", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["program_id"], name: "index_users_on_program_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["workplace_id"], name: "index_users_on_workplace_id"
  end

  create_table "workplaces", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "program_exercises", "exercises"
  add_foreign_key "program_exercises", "programs"
  add_foreign_key "standing_goals", "programs"
  add_foreign_key "standing_goals", "users"
  add_foreign_key "users", "programs"
  add_foreign_key "users", "workplaces"
end
