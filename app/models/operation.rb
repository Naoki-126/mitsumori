# frozen_string_literal: true

class Operation < ApplicationRecord
  has_many :quotation_has_operations
  has_many :quotations, through: :quotation_has_operations
end
