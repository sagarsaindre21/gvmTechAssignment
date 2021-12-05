# Category class
class Category < ApplicationRecord
	has_many :products, class_name: 'Vendor::Product'
end
