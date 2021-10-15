# frozen_string_literal: true

# １行コメントを追加_rubocop対策
class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :company_name

      t.timestamps
    end
  end
end
