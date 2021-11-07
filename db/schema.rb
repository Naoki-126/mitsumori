# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_211_107_221_825) do # rubocop:disable all
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'comments', force: :cascade do |t|
    t.text 'body'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.bigint 'quotation_id', null: false
    t.index ['quotation_id'], name: 'index_comments_on_quotation_id'
  end

  create_table 'companies', force: :cascade do |t|
    t.string 'company_name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'materials', force: :cascade do |t|
    t.string 'material_name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'operations', force: :cascade do |t|
    t.string 'operation_name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.decimal 'operation_cost'
  end

  create_table 'quotation_detail_has_companies', force: :cascade do |t|
    t.bigint 'quotation_detail_id', null: false
    t.bigint 'company_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['company_id'], name: 'index_quotation_detail_has_companies_on_company_id'
    t.index ['quotation_detail_id'], name: 'index_quotation_detail_has_companies_on_quotation_detail_id'
  end

  create_table 'quotation_detail_has_operations', force: :cascade do |t|
    t.bigint 'quotation_detail_id', null: false
    t.bigint 'operation_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['operation_id'], name: 'index_quotation_detail_has_operations_on_operation_id'
    t.index ['quotation_detail_id'], name: 'index_quotation_detail_has_operations_on_quotation_detail_id'
  end

  create_table 'quotation_details', force: :cascade do |t|
    t.integer 'quantity_monthly'
    t.decimal 'sell_price'
    t.decimal 'cost_price'
    t.bigint 'quotation_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['quotation_id'], name: 'index_quotation_details_on_quotation_id'
  end

  create_table 'quotations', force: :cascade do |t|
    t.string 'part_number'
    t.string 'part_name'
    t.date 'sop'
    t.binary 'drawing'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.bigint 'user_id', null: false
    t.bigint 'material_id', null: false
    t.bigint 'client_id', null: false
    t.decimal 'sell_mold'
    t.decimal 'cost_mold'
    t.index ['client_id'], name: 'index_quotations_on_client_id'
    t.index ['material_id'], name: 'index_quotations_on_material_id'
    t.index ['user_id'], name: 'index_quotations_on_user_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'registration_id'
    t.string 'email'
    t.index ['name'], name: 'index_users_on_name', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  add_foreign_key 'comments', 'quotations'
  add_foreign_key 'quotation_detail_has_companies', 'companies'
  add_foreign_key 'quotation_detail_has_companies', 'quotation_details'
  add_foreign_key 'quotation_detail_has_operations', 'operations'
  add_foreign_key 'quotation_detail_has_operations', 'quotation_details'
  add_foreign_key 'quotation_details', 'quotations'
  add_foreign_key 'quotations', 'companies', column: 'client_id'
  add_foreign_key 'quotations', 'materials'
  add_foreign_key 'quotations', 'users'
end
