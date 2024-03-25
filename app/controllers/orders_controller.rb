class OrdersController < ApplicationController
  def create
    @order = Order.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: product.subtotal,
      tax: product.tax,
      total: product.total,
    )
    render :show
  end

  def show
    @order = Order.find_by(id: params[:id])
    render :show
  end

  def index
    if current_user
      @orders = current_user.orders
      render :index
    else
      render json: ["must be logged in to view"], status: :unauthorized
    end
  end
end
