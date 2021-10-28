# frozen_string_literal: true

FactoryBot.define do
  factory :quotation_has_supplier do
    quotation { nil }
    supplier { nil }
  end
end
