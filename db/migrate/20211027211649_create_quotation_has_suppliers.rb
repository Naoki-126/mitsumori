# frozen_string_literal: true

# rubocop警告対応の為、記述
class CreateQuotationHasSuppliers < ActiveRecord::Migration[6.1]
  def change
    create_table :quotation_has_suppliers do |t|
      t.references :quotation, null: false, foreign_key: true
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
