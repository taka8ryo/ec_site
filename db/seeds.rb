5.times do |n|
  Product.create(
    name: Faker::JapaneseMedia::OnePiece.character,
    description: Faker::Lorem.sentences(1),
    price: "88,211円"
  )
end