# frozen_string_literal: true

# rubocop警告対応の為、記述
class RenameCompanyNameColumnToCompanies < ActiveRecord::Migration[6.1]
  def change
    rename_column :companies, :compnay_name, :company_name
  end
end
