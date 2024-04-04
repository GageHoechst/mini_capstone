class CartedProductsController < ApplicationController
  def create
    @carted_products = CartedProduct.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: params[:status],
      order_id: params[:order_id],
    )
    render :show
  end

  def show
    @carted_products = CartedProduct.find_by(id: params[:id])
    render :show
  end
end
