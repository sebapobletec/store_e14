class ProductsController < ApplicationController

  def new
    @product = Product.new
  end


  def create
    @category = Category.find(params[:category_id])
    @product = Product.new(product_params)
    @product.category = @category
    @product.save
    redirect_to @category
  end


  private
  def product_params
    params.require(:product).permit(:name, :price)
  end
end
