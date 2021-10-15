# frozen_string_literal: true

# １行コメントを追加_rubocop対策
class CreateMaterials < ActiveRecord::Migration[6.1]
  def change
    create_table :materials do |t|
      t.string :material_name

      t.timestamps
    end
  end
end
