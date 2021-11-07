# frozen_string_literal: true

class QuotationDetail < ApplicationRecord
  belongs_to :quotation

  has_many :quotation_detail_has_operations
  has_many :operations, through: :quotation_detail_has_operations

  has_many :quotation_detail_has_companies
  has_many :companies, through: :quotation_detail_has_companies
end
