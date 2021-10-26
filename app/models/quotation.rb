# frozen_string_literal: true

class Quotation < ApplicationRecord
  belongs_to :user
  belongs_to :material
  belongs_to :client
  has_many :comments
  has_many :sales
  has_many :costs
end
