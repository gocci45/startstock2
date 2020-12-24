FactoryBot.define do
  factory :item do
    itemname_id {Faker::Number.within(range: 2..18)}
    maker_id {Faker::Number.within(range: 2..6)}
    souko_id {Faker::Number.within(range: 2..9)}
    kt_gl_id {Faker::Number.within(range: 2..8)}
    category_id {Faker::Number.within(range: 2..5)}
    expiration_date {2021/1/1}
    stock {10}
    association :user 
  end
end
