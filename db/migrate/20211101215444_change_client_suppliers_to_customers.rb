# frozen_string_literal: true

# rubocop警告対応の為、記述
class ChangeClientSuppliersToCustomers < ActiveRecord::Migration[6.1]
  def change
    rename_table :client_suppliers, :customers
  end
end
