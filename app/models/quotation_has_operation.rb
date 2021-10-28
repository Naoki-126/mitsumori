# frozen_string_literal: true

class QuotationHasOperation < ApplicationRecord
  belongs_to :quotation
  belongs_to :operation
end
