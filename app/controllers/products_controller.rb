class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :destroy]

  def index
    @products = Product.all
    if params[:query].present?
      @products = @products.where("name ILIKE ?", "%#{params[:query]}%")
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user

    if @product.save
      redirect_to @product
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to product_path(@product)
  end

  def show
    @product = Product.find(params[:id])
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :price, :description, :category, :size, :image)
  end
end
