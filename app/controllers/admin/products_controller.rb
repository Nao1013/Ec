class Admin::ProductsController < ApplicationController
  
  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to admin_product_path(@product), notice: '投稿しました'
    else
      render :new
    end
  end
  
  def index
    @products = Product.all
  end
  
  def show
    @product = Product.find(params[:id])
  end
  
  def edit
    @product = Product.find(params[:id])
  end
  
  def update
    @product = Product.find(params[:id])
    if @product.update
      redirect_to admin_product_path(@product), notice: '編集しました'
    else
      render :edit
    end
  end
  
  private
  
  def product_params
    params.require(:product).permit(:name, :introduct, :no_tax, :is_status, :image, :genre_id)
  end
  
  
end
