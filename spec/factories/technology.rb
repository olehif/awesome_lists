FactoryBot.define do
  factory :technology do
    name { SecureRandom.hex }

    trait :invalid do
      name { '' }
    end
  end
end
