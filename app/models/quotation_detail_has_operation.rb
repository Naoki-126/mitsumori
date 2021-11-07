# frozen_string_literal: true

class QuotationDetailHasOperation < ApplicationRecord
  belongs_to :quotation_detail
  belongs_to :operation
end
