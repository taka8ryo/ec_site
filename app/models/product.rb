class Product < ApplicationRecord
  include Hashid::Rails
  mount_uploader :image, ImageUploader
  has_many :basket_products, dependent: :destroy
  belongs_to :admin

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :unit, presence: true
end
