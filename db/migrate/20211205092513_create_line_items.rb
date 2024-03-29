class CreateLineItems < ActiveRecord::Migration[6.0]
  def change
    create_table :line_items do |t|
      t.references :itemable, polymorphic: true
      t.float :amount
      t.integer :quantity
      t.integer :product_id, add_index: true

      t.timestamps
    end
  end
end
