FactoryBot.define do
  factory :todo do
    mobile { Faker::Number.number(10) }
    content { Faker::Lorem.word(4) }
    username { Faker::Internet.user_name }
    timestamp { Faker::Time.between(DateTime.now - 1, DateTime.now) }
    digest {Faker::Lorem.characters(64) }
  end
end
