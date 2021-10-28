# frozen_string_literal: true

# rubocop警告対応の為、記述
class AddMoldToQuotations < ActiveRecord::Migration[6.1]
  def change
    add_column :quotations, :sell_mold, :decimal
    add_column :quotations, :cost_mold, :decimal
  end
end
