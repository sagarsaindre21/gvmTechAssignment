class Admin::OrdersController < AdminsController
	before_action :set_order, only: [:show]

	def index
		@orders = Order.all
	end

	def show
		@line_items = @order.line_items
	end

	private
	def set_order
    @order = Order.find(params[:id])
	end
end
