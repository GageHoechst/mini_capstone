class Product < ApplicationRecord
  # validates :price, presence: true
  # validates :name, presence: true
  # validates :price, numericality: true
  # validates :description, length: { minimum: 20 }
  # validates :image_url, presence: true
  def supplier
    Supplier.find_by(id: supplier_id)
  end

  belongs_to :supplier
  has_many :orders
  has_many :category_product
  has_many :categories, through: :category_product
end
