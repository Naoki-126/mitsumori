# frozen_string_literal: true

# rubocop警告対応の為、記述
class CreateSuppliers < ActiveRecord::Migration[6.1]
  def change
    create_table :suppliers do |t|
      t.string :supplier_name

      t.timestamps
    end
  end
end
