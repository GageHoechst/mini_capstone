class ProductsController < ApplicationController
  def one_product
    @Product = Product.find_by
    (id: params{:id})
    render :show
    
  end
end
