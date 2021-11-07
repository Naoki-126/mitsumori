# frozen_string_literal: true

# rubocop警告対応の為、記述
class ChangeClientsToClientSuppliers < ActiveRecord::Migration[6.1]
  def change
    rename_table :clients, :client_suppliers
  end
end
