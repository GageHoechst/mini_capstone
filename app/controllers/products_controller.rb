class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end

  def create
    @product = Product.create(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
    )
    render :show
    if @product.valid?
      render :show
    else
      render json: { errors: @product.errors.full_messages }, status: 422
    end
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

  def index
    @products = Product.all
    render :index
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name] || @product.name,
      price: params[:price] || @price.price,
      image_url: params[:image_url] || @product.image_url,
      description: params[:description] || @product.description,
    )
    render :show
    if @product.valid?
      render :show
    else
      render json: { errors: @product.errors.full_messages }, status: 422
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: { message: "Product destroyed successfully" }
  end
end
