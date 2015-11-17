# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151117181549) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses_grades", force: :cascade do |t|
    t.integer "course_id"
    t.integer "grade_id"
  end

  add_index "courses_grades", ["course_id"], name: "index_courses_grades_on_course_id", using: :btree
  add_index "courses_grades", ["grade_id"], name: "index_courses_grades_on_grade_id", using: :btree

  create_table "distribution_processes", force: :cascade do |t|
    t.string   "semester"
    t.date     "klass_registry_start"
    t.date     "teacher_intent_start"
    t.date     "first_resolution_start"
    t.date     "substitute_resolution_start"
    t.date     "conclusion"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "grades", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "knowledge_group_id"
  end

  add_index "grades", ["knowledge_group_id"], name: "index_grades_on_knowledge_group_id", using: :btree

  create_table "klass_intents", force: :cascade do |t|
    t.integer  "klass_id"
    t.integer  "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "klass_intents", ["klass_id"], name: "index_klass_intents_on_klass_id", using: :btree
  add_index "klass_intents", ["teacher_id"], name: "index_klass_intents_on_teacher_id", using: :btree

  create_table "klass_schedules", force: :cascade do |t|
    t.integer  "week_day"
    t.time     "starts_at"
    t.time     "finishs_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "klass_id"
  end

  add_index "klass_schedules", ["klass_id"], name: "index_klass_schedules_on_klass_id", using: :btree

  create_table "klasses", force: :cascade do |t|
    t.integer  "workload"
    t.integer  "distribution_process_id"
    t.integer  "teacher_id"
    t.integer  "grade_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "klasses", ["distribution_process_id"], name: "index_klasses_on_distribution_process_id", using: :btree
  add_index "klasses", ["grade_id"], name: "index_klasses_on_grade_id", using: :btree
  add_index "klasses", ["teacher_id"], name: "index_klasses_on_teacher_id", using: :btree

  create_table "knowledge_groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "knowledge_levels", force: :cascade do |t|
    t.integer "level",              default: 1
    t.integer "teacher_id"
    t.integer "knowledge_group_id"
  end

  add_index "knowledge_levels", ["knowledge_group_id"], name: "index_knowledge_levels_on_knowledge_group_id", using: :btree
  add_index "knowledge_levels", ["teacher_id"], name: "index_knowledge_levels_on_teacher_id", using: :btree

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.string   "registry"
    t.string   "lattes_url"
    t.date     "entry_date"
    t.string   "formation"
    t.integer  "workload"
    t.string   "about"
    t.string   "rg"
    t.string   "cpf"
    t.date     "birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "teachers", ["user_id"], name: "index_teachers_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "courses_grades", "courses"
  add_foreign_key "courses_grades", "grades"
  add_foreign_key "grades", "knowledge_groups"
  add_foreign_key "klass_intents", "klasses"
  add_foreign_key "klass_intents", "teachers"
  add_foreign_key "klass_schedules", "klasses"
  add_foreign_key "klasses", "distribution_processes"
  add_foreign_key "klasses", "grades"
  add_foreign_key "klasses", "teachers"
  add_foreign_key "knowledge_levels", "knowledge_groups"
  add_foreign_key "knowledge_levels", "teachers"
  add_foreign_key "teachers", "users"
end
