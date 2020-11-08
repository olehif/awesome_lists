FactoryBot.define do
  factory :category do
    name { SecureRandom.hex }
    association :technology

    trait :invalid do
      name { '' }
    end
  end
end
