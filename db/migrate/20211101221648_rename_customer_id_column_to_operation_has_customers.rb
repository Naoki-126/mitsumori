# frozen_string_literal: true

# rubocop警告対応の為、記述
class RenameCustomerIdColumnToOperationHasCustomers < ActiveRecord::Migration[6.1]
  def change
    rename_column :operation_has_customers, :client_supplier_id, :customer_id
  end
end
