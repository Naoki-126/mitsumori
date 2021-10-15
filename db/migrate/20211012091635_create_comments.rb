# frozen_string_literal: true

# １行コメントを追加_rubocop対策
class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :body

      t.timestamps
    end
  end
end
