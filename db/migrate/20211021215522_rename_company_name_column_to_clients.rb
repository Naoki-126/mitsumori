# frozen_string_literal: true

# rubocop警告対応の為、記述
class RenameCompanyNameColumnToClients < ActiveRecord::Migration[6.1]
  def change
    rename_column :clients, :company_name, :client_name
  end
end
