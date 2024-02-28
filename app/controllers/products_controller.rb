class ProductsController < ApplicationController
  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end

  def create
    @product = Product.create(
      name: "glass eye",
      price: 35,
      image_url: "glass eye picture",
      description: "A fake eye to see the future",
    )
    render :show
  end
end
