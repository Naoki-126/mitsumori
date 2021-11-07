# frozen_string_literal: true

# rubocop警告対応の為、記述
class CreateOperationHasClientSuppliers < ActiveRecord::Migration[6.1]
  def change
    create_table :operation_has_client_suppliers do |t|
      t.references :operation, null: false, foreign_key: true
      t.references :client_supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
