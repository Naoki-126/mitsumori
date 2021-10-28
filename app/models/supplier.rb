# frozen_string_literal: true

class Supplier < ApplicationRecord
  has_many :quotation_has_suppliers
  has_many :quotations, through: :quotation_has_suppliers
end
