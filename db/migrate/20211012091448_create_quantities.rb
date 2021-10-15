# frozen_string_literal: true

# １行コメントを追加_rubocop対策
class CreateQuantities < ActiveRecord::Migration[6.1]
  def change
    create_table :quantities do |t|
      t.integer :monthly_production

      t.timestamps
    end
  end
end
