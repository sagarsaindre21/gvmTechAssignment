class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :user_id, add_index: true
      t.float :amount

      t.timestamps
    end
  end
end
