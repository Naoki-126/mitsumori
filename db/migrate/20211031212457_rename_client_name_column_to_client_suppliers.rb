# frozen_string_literal: true

# rubocop警告対応の為、記述
class RenameClientNameColumnToClientSuppliers < ActiveRecord::Migration[6.1]
  def change
    rename_column :client_suppliers, :client_name, :compnay_name
  end
end
