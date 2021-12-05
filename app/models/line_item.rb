# LineItem class
class LineItem < ApplicationRecord
  belongs_to :itemable, polymorphic: true
  belongs_to :product, class_name: 'Vendor::Product'
end
