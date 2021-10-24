# frozen_string_literal: true

# rubocop警告対応の為、記述
class AddEmailToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :email, :string
  end
end
