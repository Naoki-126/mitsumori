# frozen_string_literal: true

class Material < ApplicationRecord
  has_many :quotations
end
