# frozen_string_literal: true

# rubocop警告対応の為、記述
class CreateQuotationDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :quotation_details do |t|
      t.integer :quantity_monthly
      t.decimal :sell_price
      t.decimal :cost_price
      t.references :quotation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
