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

ActiveRecord::Schema.define(version: 20150831123822) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "academic_years", force: :cascade do |t|
    t.string   "range"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "admissions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authentications", force: :cascade do |t|
    t.string   "provider",   null: false
    t.string   "uid",        null: false
    t.string   "email",      null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carrier_wave_files", force: :cascade do |t|
    t.string   "identifier"
    t.string   "original_filename"
    t.string   "content_type"
    t.string   "size"
    t.binary   "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cash_managements", force: :cascade do |t|
    t.decimal  "cash_opening"
    t.decimal  "cash_paid"
    t.decimal  "cash_in_hand"
    t.decimal  "cash_deposited"
    t.decimal  "cash_moved"
    t.decimal  "cash_closing"
    t.string   "remark"
    t.string   "expense_made"
    t.string   "payment"
    t.string   "authorized_by"
    t.decimal  "amount"
    t.string   "expense_by"
    t.string   "month"
    t.string   "year"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "cash_deposited_enabled", default: false
    t.boolean  "cash_moved_enabled",     default: false
    t.integer  "nature_id"
  end

  create_table "castes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "daily_meal_meals", force: :cascade do |t|
    t.integer  "meal_id"
    t.integer  "daily_meal_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "no_of_student1", default: 0
    t.integer  "no_of_student2", default: 0
    t.integer  "no_of_student3", default: 0
    t.integer  "no_of_student4", default: 0
    t.integer  "no_of_student5", default: 0
    t.integer  "total_number",   default: 0
    t.decimal  "qty",            default: 0.0
    t.string   "title"
  end

  create_table "daily_meals", force: :cascade do |t|
    t.date     "date"
    t.decimal  "total_number"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "no_of_student1"
    t.integer  "no_of_student2"
    t.integer  "no_of_student3"
    t.integer  "no_of_student4"
    t.integer  "no_of_student5"
  end

  create_table "dashboards", force: :cascade do |t|
    t.string   "students_female"
    t.string   "students_male"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "divisions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_salary_receipts", force: :cascade do |t|
    t.decimal  "salary"
    t.integer  "employee_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.text     "remark"
    t.integer  "salary_receipt_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "job_title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "gender"
    t.text     "address"
    t.string   "middle_name"
    t.string   "qualification"
    t.decimal  "salary"
    t.string   "contact_no"
    t.string   "entry_no",      default: "auto"
    t.string   "status"
    t.string   "year"
    t.string   "salary_check"
    t.string   "remark"
    t.integer  "paid_type_id"
    t.integer  "section_id"
    t.integer  "pay_band_id"
    t.date     "birthday"
  end

  create_table "expense_receipts", force: :cascade do |t|
    t.string   "expense_made"
    t.string   "nature_of_expense"
    t.string   "payment_made"
    t.decimal  "amount"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "nature_id"
    t.integer  "expense_by_id"
    t.integer  "authorized_by_id"
  end

  create_table "fees_head_recurrences", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fees_head_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fees_heads", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "concession"
    t.decimal  "amount"
    t.integer  "fees_head_type_id"
    t.integer  "fees_head_recurrence_id"
    t.decimal  "total_amount"
  end

  create_table "fees_heads_standards", force: :cascade do |t|
    t.integer  "fees_head_id"
    t.integer  "standard_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "fees_heads_standards", ["fees_head_id"], name: "index_fees_heads_standards_on_fees_head_id", using: :btree
  add_index "fees_heads_standards", ["standard_id"], name: "index_fees_heads_standards_on_standard_id", using: :btree

  create_table "finance_modes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meals", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.decimal  "total_number"
    t.decimal  "qty"
  end

  create_table "midday_managements", force: :cascade do |t|
    t.string   "month"
    t.string   "item_name"
    t.string   "ordered"
    t.string   "received"
    t.string   "vegetable"
    t.string   "cook"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "meal"
  end

  create_table "monthly_meal_meals", force: :cascade do |t|
    t.integer  "meal_id"
    t.integer  "monthly_record_id"
    t.decimal  "left"
    t.decimal  "last_received"
    t.decimal  "used"
    t.decimal  "ordered"
    t.decimal  "received_this_month"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "title"
    t.decimal  "received"
  end

  create_table "monthly_records", force: :cascade do |t|
    t.string   "month"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "expense"
    t.string   "cooks"
    t.string   "year"
  end

  create_table "natures", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paid_types", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pay_bands", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "place_of_births", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "receipts", force: :cascade do |t|
    t.integer  "student_id"
    t.decimal  "total",          default: 0.0
    t.text     "bank_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "number"
    t.string   "cheque_number"
    t.date     "date"
    t.decimal  "cash",           default: 0.0
    t.string   "status"
    t.string   "remark"
    t.string   "cheque_status"
    t.string   "cheque_remark"
    t.boolean  "payment_method", default: false
  end

  create_table "receipts_fees_heads", force: :cascade do |t|
    t.integer  "receipt_id"
    t.integer  "fees_head_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "concession"
    t.decimal  "amount"
  end

  add_index "receipts_fees_heads", ["fees_head_id"], name: "index_receipts_fees_heads_on_fees_head_id", using: :btree
  add_index "receipts_fees_heads", ["receipt_id"], name: "index_receipts_fees_heads_on_receipt_id", using: :btree

  create_table "religions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "salary_receipts", force: :cascade do |t|
    t.string   "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "month"
  end

  create_table "sections", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.string   "session_id", null: false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], name: "index_sessions_on_session_id", using: :btree
  add_index "sessions", ["updated_at"], name: "index_sessions_on_updated_at", using: :btree

  create_table "standards", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email",            default: "",     null: false
    t.string   "gender"
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "entry_no",         default: "auto"
    t.integer  "group_no"
    t.string   "admission_date"
    t.string   "father_name"
    t.string   "mother_name"
    t.string   "birth_place"
    t.string   "nationality"
    t.string   "remarks"
    t.string   "last_school"
    t.integer  "admission_id"
    t.integer  "religion_id"
    t.integer  "caste_id"
    t.integer  "standard_id"
    t.integer  "division_id"
    t.integer  "transport_id"
    t.integer  "finance_mode_id"
    t.date     "birthday"
    t.string   "contact_no"
    t.text     "address"
    t.decimal  "remaining_amount", default: 0.0
    t.integer  "academic_year_id"
    t.text     "reason"
    t.boolean  "bounced",          default: false
  end

  create_table "students_fees_heads", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "fees_head_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "concession"
    t.decimal  "amount_concession"
  end

  add_index "students_fees_heads", ["fees_head_id"], name: "index_students_fees_heads_on_fees_head_id", using: :btree
  add_index "students_fees_heads", ["student_id"], name: "index_students_fees_heads_on_student_id", using: :btree

  create_table "transports", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",        null: false
    t.string   "encrypted_password",     default: "",        null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
    t.string   "status",                 default: "pending"
    t.string   "avatar"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "title"
    t.string   "phone"
    t.string   "street"
    t.integer  "zip_code"
    t.string   "city"
    t.string   "country"
    t.string   "state"
    t.text     "short_bio"
    t.string   "facebook_link"
    t.string   "twitter_link"
    t.string   "google_plus_link"
    t.string   "linkedin_link"
    t.string   "social_avatar_url"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "facebook_avatar"
    t.string   "google_plus_avatar"
    t.string   "linkedin_avatar"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
