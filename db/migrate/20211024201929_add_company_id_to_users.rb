# frozen_string_literal: true

# rubocop警告対応の為、記述
class AddCompanyIdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :company_id, :string
  end
end
