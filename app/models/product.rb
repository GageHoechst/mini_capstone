class Product < ApplicationRecord
  # validates :price, presence: true
  # validates :name, presence: true
  # validates :price, numericality: true
  # validates :description, length: { minimum: 20 }
  # validates :image_url, presence: true
  def supplier
    Supplier.find_by(id: supplier_id)
  end

  def image
    Image.find_by(id: image_id)
  end
end
