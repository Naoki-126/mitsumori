# frozen_string_literal: true

# rubocop警告対応の為、記述
class RenameEmailColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :email, :name
  end
end
