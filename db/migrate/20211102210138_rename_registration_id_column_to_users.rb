# frozen_string_literal: true

# rubocop警告対応の為、記述
class RenameRegistrationIdColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :company_id, :registration_id
  end
end
