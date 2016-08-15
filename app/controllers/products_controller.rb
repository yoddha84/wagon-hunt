class ProductsController < ApplicationController

  def index
    if params[:filter]
      @products = Product.select {|product| product.name == params[:filter]}
    else
      @products = Product.all
    end
  end

  def show
    @product = Product.find(params[:id].to_i)
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def new
    @product = Product.new
  end

  def edit

  end

  def update

  end

  def destroy

  end

  def product_params
    params.require(:product).permit(:name, :url)
  end

end
