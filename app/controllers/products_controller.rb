class ProductsController < ApplicationController
	def index

		@products = Product.order(:name)

	end
	def update
		@products = Product.find(params[:id])
		if @products.update(params[:product].permit!)
			redirect_to products_path 
		else
			 render "edit" 
		end
	end
	def show
		@products = Product.find(params[:id])
	end

	def new

		@products = Product.new
	end
	def create
	
		@products = Product.new( params[:product].permit! )
		if @products.save  
			redirect_to products_path 
		else
			@proerror = @products.errors.full_messages
			
			 render "new" 
		end	 
	end
	def edit

		@products = Product.find(params[:id])
	end
	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		redirect_to products_path
	end
end
