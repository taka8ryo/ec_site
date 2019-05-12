class Product < ApplicationRecord
  include Hashid::Rails
  belongs_to :basket_products
  mount_uploader :image, ImageUploader
  has_many :basket_products, dependent: :destroy
end
