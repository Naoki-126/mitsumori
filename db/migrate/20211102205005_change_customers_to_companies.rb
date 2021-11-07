# frozen_string_literal: true

# rubocop警告対応の為、記述
class ChangeCustomersToCompanies < ActiveRecord::Migration[6.1]
  def change
    rename_table :customers, :companies
  end
end
