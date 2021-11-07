# frozen_string_literal: true

class QuotationDetailHasCompany < ApplicationRecord
  belongs_to :quotation_detail
  belongs_to :company
end
