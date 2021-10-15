# frozen_string_literal: true

# １行コメントを追加_rubocop対策
class CreateOperations < ActiveRecord::Migration[6.1]
  def change
    create_table :operations do |t|
      t.string :operation_name

      t.timestamps
    end
  end
end
