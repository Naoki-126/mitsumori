# frozen_string_literal: true

# rubocop警告対応の為、記述
class CreateQuotationDetailHasCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :quotation_detail_has_companies do |t|
      t.references :quotation_detail, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
