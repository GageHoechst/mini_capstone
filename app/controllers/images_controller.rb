class ImagesController < ApplicationController
  def show
    @image = Image.find_by(id: params[:id])
    render :show
  end

  def create
    @image = Image.create(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
    )
    render :show
    if @image.valid?
      render :show
    else
      render json: { errors: @image.errors.full_messages }, status: 422
    end
  end

  def create
    @image = Image.create(
      name: "glass eye",
      price: 35,
      image_url: "glass eye picture",
      description: "A fake eye to see the future",
    )
    render :show
  end

  def index
    @image = Image.all
    render :index
  end

  def update
    @image = Image.find_by(id: params[:id])
    @image.update(
      name: params[:name] || @image.name,
      price: params[:price] || @image.price,
      image_url: params[:image_url] || @image.image_url,
      description: params[:description] || @image.description,
    )
    render :show
    if @image.valid?
      render :show
    else
      render json: { errors: @image.errors.full_messages }, status: 422
    end
  end

  def destroy
    @pimage = Image.find_by(id: params[:id])
    @image.destroy
    render json: { message: "Image destroyed successfully" }
  end
end
