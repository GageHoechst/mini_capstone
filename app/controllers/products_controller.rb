class ProductsController < ApplicationController
  def one_product
    product = Product.first
    render json: {
      name: product.name,
      price: product.price,
      image_url: product.image_url,
      description: product.description,

    }
  end
end
