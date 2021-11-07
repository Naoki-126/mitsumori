# frozen_string_literal: true

class Operation < ApplicationRecord
  has_many :quotation_detail_has_operations
  has_many :quotation_details, through: :quotation_detail_has_operations
end
