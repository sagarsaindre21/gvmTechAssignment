class HomeController < ApplicationController

	def index
		if current_user&.role&.name == 'vendor'
		 redirect_to vendor_products_path
		elsif current_user&.role&.name == 'customer'
		else
			redirect_to admin_users_path
		end


		@products = Vendor::Product.all
		@categories = Category.all
	end
end
