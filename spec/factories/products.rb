FactoryBot.define do
  factory :product do
    name { "MyString" }
    vendor { nil }
    list_price { "9.99" }
    sell_price { "9.99" }
    on_sell { false }
    code { "MyString" }
    deleted_at { "2020-04-26 12:56:11" }
  end
end
