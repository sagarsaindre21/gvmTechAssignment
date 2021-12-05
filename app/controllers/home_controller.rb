#HomeController
class HomeController < ApplicationController

	def index
		@products = Vendor::Product.all
		@categories = Category.all
		@cart_items = current_user&.cart_items
	end
end
