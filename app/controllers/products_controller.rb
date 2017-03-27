class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params.require(:product).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @product.save
        format.html { redirect_to products_path, notice: 'Your product was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

end
