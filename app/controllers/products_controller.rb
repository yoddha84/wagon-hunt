class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :edit, :update, :destroy]

  def index
    if params[:filter]
      @products = Product.select {|product| product.name == params[:filter]}
    else
      @products = Product.all
    end
  end

  def show
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
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :url)
  end

  def find_product
    @product = Product.find(params[:id])
  end

end
