FactoryBot.define do
  factory :purchase do
    itemname_id {Faker::Number.within(range: 2..18)}
    buy_stock {10}
    association :user 
  end
end
