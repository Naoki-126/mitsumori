# frozen_string_literal: true

# rubocop警告対応の為、記述
class AddClientToQuotations < ActiveRecord::Migration[6.1]
  def change
    add_reference :quotations, :client, null: false, foreign_key: true
  end
end
