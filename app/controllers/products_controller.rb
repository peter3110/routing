class ProductsController < ApplicationController
  
  def index
    @products = Product.all
  end
  
  def show
    @product = Product.find(params[:id])
  end
  
  def new
  end
  
  def create
    @product = Product.new(params.require(:product).permit(:brand, :price))
    @product.save
    redirect_to @product
  end
  
end
