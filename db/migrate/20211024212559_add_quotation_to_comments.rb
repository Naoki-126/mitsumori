# frozen_string_literal: true

# rubocop警告対応の為、記述
class AddQuotationToComments < ActiveRecord::Migration[6.1]
  def change
    add_reference :comments, :quotation, null: false, foreign_key: true
  end
end
