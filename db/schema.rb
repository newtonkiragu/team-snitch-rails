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

ActiveRecord::Schema.define(version: 20171002055059) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "subject_id"
    t.string "assignment_details"
    t.datetime "due_date"
    t.string "extra_resources"
    t.integer "level_id"
  end

  create_table "exams", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grades", force: :cascade do |t|
    t.integer "score"
    t.string "grade"
    t.integer "subject_id"
    t.integer "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cat1"
    t.integer "cat2"
    t.integer "cat3"
    t.integer "exam_id"
  end

  create_table "levels", force: :cascade do |t|
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mwanafunzis", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_mwanafunzis_on_email", unique: true
    t.index ["reset_password_token"], name: "index_mwanafunzis_on_reset_password_token", unique: true
  end

  create_table "mzazis", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_mzazis_on_email", unique: true
    t.index ["reset_password_token"], name: "index_mzazis_on_reset_password_token", unique: true
  end

  create_table "parents", force: :cascade do |t|
    t.bigint "student_id"
    t.string "name"
    t.integer "mobile"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
    t.index ["student_id"], name: "index_parents_on_student_id"
  end

  create_table "school_attachments", force: :cascade do |t|
    t.integer "school_id"
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
  end

  create_table "streams", force: :cascade do |t|
    t.string "stream"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "level_id"
  end

  create_table "streams_teachers", id: false, force: :cascade do |t|
    t.bigint "teacher_id", null: false
    t.bigint "stream_id", null: false
    t.index ["teacher_id", "stream_id"], name: "index_streams_teachers_on_teacher_id_and_stream_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "stream"
    t.integer "fee"
    t.string "dormitory"
    t.string "clubs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
    t.integer "stream_id"
    t.integer "mwanafunzi_id"
  end

  create_table "students_subjects", id: false, force: :cascade do |t|
    t.bigint "subject_id", null: false
    t.bigint "student_id", null: false
    t.index ["subject_id", "student_id"], name: "index_students_subjects_on_subject_id_and_student_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects_teachers", id: false, force: :cascade do |t|
    t.bigint "teacher_id", null: false
    t.bigint "subject_id", null: false
    t.index ["teacher_id", "subject_id"], name: "index_subjects_teachers_on_teacher_id_and_subject_id"
  end

  create_table "teacher_attachments", force: :cascade do |t|
    t.integer "teacher_id"
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "superadmin_role", default: false
    t.boolean "supervisor_role", default: false
    t.boolean "user_role", default: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "parents", "students"
end
