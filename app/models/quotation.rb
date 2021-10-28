# frozen_string_literal: true

class Quotation < ApplicationRecord
  belongs_to :user
  belongs_to :material
  belongs_to :client
  has_many :comments
  has_many :quotation_details

  has_many :quotation_has_operations
  has_many :operations, through: :quotation_has_operations

  has_many :quotation_has_suppliers
  has_many :suppliers, through: :quotation_has_suppliers
end
