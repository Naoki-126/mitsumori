# frozen_string_literal: true

class Sale < ApplicationRecord
  belongs_to :quotation
end
