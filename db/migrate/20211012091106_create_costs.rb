# frozen_string_literal: true

# １行コメントを追加_rubocop対策
class CreateCosts < ActiveRecord::Migration[6.1]
  def change
    create_table :costs do |t|
      t.decimal :cost_price
      t.money :cost_mold

      t.timestamps
    end
  end
end
