class Product < ApplicationRecord
  validates :price, presence: true
  validates :name, presence: true
  validates :price, numericality: true
  validates :description, length: { minimum: 20 }
  validates :image_url, presence: true
end
