FactoryBot.define do
  factory :product do
    name "product"
    description "product"
    price "1000"
    unit 'yen'
    image Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/image/icon.jpg'))
    association :admin
  end
end
