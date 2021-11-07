# frozen_string_literal: true

class Company < ApplicationRecord
  has_many :quotations

  has_many :quotation_detail_has_companies
  has_many :quotation_details, through: :quotation_detail_has_companies
end
