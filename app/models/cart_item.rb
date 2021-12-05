# CartItem class
class CartItem < ApplicationRecord
	belongs_to :product, class_name: 'Vendor::Product'
	validates :product_id, presence: true
	before_save :add_amount

	def add_amount
		self.amount = calculate_amount
	end

	def calculate_amount
		product = Vendor::Product.find(product_id)
		product.price.to_f * quantity.to_f
	end
end