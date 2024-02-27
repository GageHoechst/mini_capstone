class ProductsController < ApplicationController
  def shop
    render json: { name: "Hello" }
  end
end
