class ApplicationController < ActionController::Base
  def shop
    products = Product.all
    render json: {
      name: products.name,
      price: products.price,
      image_url: products.image_url,
      description: products.description,
    }
  end
end
