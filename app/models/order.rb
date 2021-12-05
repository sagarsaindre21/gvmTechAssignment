# Order class
class Order < ApplicationRecord
  has_many :line_items, as: :itemable
  belongs_to :user
  after_create_commit :calculate_total_amount

  def calculate_total_amount
    line_items_amount = line_items.map(&:amount).sum
    self.amount = line_items_amount
    save!
  end
end
