# frozen_string_literal: true

class QuotationHasSupplier < ApplicationRecord
  belongs_to :quotation
  belongs_to :supplier
end
