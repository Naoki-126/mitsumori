# frozen_string_literal: true

FactoryBot.define do
  factory :quotation_detail_has_company do
    quotation_detail { nil }
    company { nil }
  end
end
