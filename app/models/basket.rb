class Basket < ApplicationRecord
  has_many :basket_product, dependent: :destroy
  has_many :products, through: :basket_product

  def total_price
    total_jpy_price
  end

  private
  def total_jpy_price
    jp_products = products.where(unit: 'yen')
    jp_products.sum(:price)
  end
end
