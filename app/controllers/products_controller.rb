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

  def create

  end

  def new

  end

  def edit

  end

  def update

  end

  def destroy

  end

end
