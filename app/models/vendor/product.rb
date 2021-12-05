# Vendor::Product class
class Vendor::Product < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_one_attached :image
end
