FactoryBot.define do
  factory :admin do
    sequence(:email){ |n| "tester#{n}@example.com" }
    password "password"
  end
end
