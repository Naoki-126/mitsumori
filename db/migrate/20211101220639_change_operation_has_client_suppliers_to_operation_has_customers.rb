# frozen_string_literal: true

# rubocop警告対応の為、記述
class ChangeOperationHasClientSuppliersToOperationHasCustomers < ActiveRecord::Migration[6.1]
  def change
    rename_table :operation_has_client_suppliers, :operation_has_customers
  end
end
