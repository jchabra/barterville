class ProductController < ApplicationController
	def index
		@all_products = Product.all
	end
	def new
	end
	def create
	end
	def show
		product = Product.find(params[:id])
		@product_name = product.name
		@product_condition = product.condition
		@product_photo_url = product.photo
		@product_owner = User.find(product.user_id)
		@product_added = product.created_at
	end
	def edit

	end
	def destroy
	end
end