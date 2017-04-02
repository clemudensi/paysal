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

ActiveRecord::Schema.define(version: 20170401173808) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.text     "country"
    t.text     "state"
    t.text     "city"
    t.text     "postal_address"
    t.text     "street_address"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "bank_accounts", force: :cascade do |t|
    t.text     "bank_name"
    t.text     "branch_code"
    t.integer  "address_id"
    t.text     "swift_code"
    t.text     "account_no"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "contractors", force: :cascade do |t|
    t.integer  "bank_account_id"
    t.text     "first_name"
    t.text     "middle_name"
    t.text     "last_name"
    t.text     "description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.text     "gender"
    t.text     "job_title"
    t.text     "organization"
    t.text     "organization_id"
  end

  create_table "contracts", force: :cascade do |t|
    t.datetime "valid_start"
    t.datetime "valid_end"
    t.text     "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "contracts_employees", id: false, force: :cascade do |t|
    t.integer "employee_id", null: false
    t.integer "contract_id", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.integer  "bank_account_id"
    t.text     "employee_id"
    t.date     "date_of_birth"
    t.date     "date_joined_company"
    t.date     "date_left_company"
    t.text     "gender"
    t.text     "job_title"
    t.text     "first_name"
    t.text     "middle_name"
    t.text     "last_name"
    t.text     "residential_address"
    t.integer  "organization_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "organizations", force: :cascade do |t|
    t.text     "legal_name"
    t.text     "legal_entity_code"
    t.text     "logo"
    t.text     "tax_id_no"
    t.string   "address_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.date     "date_founded"
    t.integer  "employee_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.index ["employee_id"], name: "index_organizations_on_employee_id", using: :btree
  end

  create_table "payments", force: :cascade do |t|
    t.boolean  "payment_status",  default: false
    t.date     "month"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "organization_id"
    t.integer  "hrs_extra"
    t.integer  "cost_extra"
    t.integer  "cost_salary"
    t.integer  "salary"
    t.integer  "hrs_worked"
    t.integer  "extra_pay"
    t.integer  "gross_pay"
    t.integer  "employee_id"
    t.index ["employee_id"], name: "index_payments_on_employee_id", using: :btree
    t.index ["organization_id"], name: "index_payments_on_organization_id", using: :btree
  end

  add_foreign_key "organizations", "employees"
  add_foreign_key "payments", "employees"
  add_foreign_key "payments", "organizations"
end
