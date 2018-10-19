FactoryBot.define do
  factory :test_model do
    attribute_1 { Faker::OnePiece.quote }
    attribute_2 { Faker::OnePiece.quote }
    attribute_3 { Faker::OnePiece.quote }
    attribute_4 { Faker::OnePiece.quote }
  end
end
