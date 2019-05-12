class Basket < ApplicationRecord
  has_many :basket_product, dependent: :destroy
  has_many :products, through: :basket_product
end
