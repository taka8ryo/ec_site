require 'rails_helper'

RSpec.describe Product, type: :model do
  it "有効なファクトリを持つこと" do
    expect(FactoryBot.build(:product)).to be_valid
  end

  it "nameがなければ無効" do
    product = FactoryBot.build(:product, name: nil)
    product.valid?
  end

  it "descriptionがなければ無効" do
    product = FactoryBot.build(:product, description: nil)
    product.valid?
  end

  it "priceがなければ無効" do
    product = FactoryBot.build(:product, price: nil)
    product.valid?
  end

  it "unitがなければ無効" do
    product = FactoryBot.build(:product, unit: nil)
    product.valid?
  end

  it "imageがなければ無効" do
    product = FactoryBot.build(:product, image: nil)
    product.valid?
  end
end
