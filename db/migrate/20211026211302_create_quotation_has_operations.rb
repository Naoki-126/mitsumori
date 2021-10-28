# frozen_string_literal: true

# rubocop警告対応の為、記述
class CreateQuotationHasOperations < ActiveRecord::Migration[6.1]
  def change
    create_table :quotation_has_operations do |t|
      t.references :quotation, null: false, foreign_key: true
      t.references :operation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
