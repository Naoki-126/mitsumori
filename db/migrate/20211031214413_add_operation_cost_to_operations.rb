# frozen_string_literal: true

# rubocop警告対応の為、記述
class AddOperationCostToOperations < ActiveRecord::Migration[6.1]
  def change
    add_column :operations, :operation_cost, :decimal
  end
end
