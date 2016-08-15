class ProductsController < ApplicationController

  def index
    if params[:filter]
      @products = Product.select {|product| product.name == params[:filter]}
    else
      @products = Product.all
    end
  end

  def show
    @products = Product.find(params[:id].to_i)
  end

end
