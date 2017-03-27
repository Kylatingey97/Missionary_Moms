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

  def edit
    @product = Product.find(params[:id])
  end 

  def update
    @product = Product.find(params[:id])

    respond_to do |format|
      if @product.update(params.require(:product).permit(:title, :subtitle, :body))
        format.html { redirect_to products_path, notice: 'Product was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @product = Product.find(params[:id])
  end

end
