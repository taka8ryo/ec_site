class ProductsController < ApplicationController
  before_action :authenticate_admin!
  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = current_admin.products.build
  end

  def create
    @product = current_admin.products.build(product_params)
    if @product.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :image, :unit)
  end
end
