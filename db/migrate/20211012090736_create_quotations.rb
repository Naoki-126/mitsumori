# frozen_string_literal: true

# １行コメントを追加_rubocop対策
class CreateQuotations < ActiveRecord::Migration[6.1]
  def change
    create_table :quotations do |t|
      t.string :part_number
      t.string :part_name
      t.date :sop
      t.binary :drawing

      t.timestamps
    end
  end
end
