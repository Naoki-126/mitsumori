# frozen_string_literal: true

FactoryBot.define do
  factory :quotation do
    part_number { 'MyString' }
    part_name { 'MyString' }
    sop { '2021-10-12' }
    drawing { '' }
  end
end
