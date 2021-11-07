# frozen_string_literal: true

FactoryBot.define do
  factory :quotation_detail_has_operation do
    quotation_detail { nil }
    operation { nil }
  end
end
