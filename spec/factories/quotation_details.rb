# frozen_string_literal: true

FactoryBot.define do
  factory :quotation_detail do
    quantity_monthly { 1 }
    sell_price { '9.99' }
    cost_price { '9.99' }
    quotation { nil }
  end
end
