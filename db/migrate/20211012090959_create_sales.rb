# frozen_string_literal: true

# １行コメントを追加_rubocop対策
class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.decimal :sell_price
      t.money :sell_mold

      t.timestamps
    end
  end
end
