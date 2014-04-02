class ProductsController < ApplicationController

def index
	@products = Product.all
end

def new
	@product = Product.new
end

def create
	@product = Product.create params[:product].permit(:ProductName, :quantity, :price, :image_url)
	redirect_to '/products'
end

def show
end




end
