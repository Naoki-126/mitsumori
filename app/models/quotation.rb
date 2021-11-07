# frozen_string_literal: true

class Quotation < ApplicationRecord
  belongs_to :user
  belongs_to :material
  belongs_to :company
  has_many :comments
  has_many :quotation_details
end
