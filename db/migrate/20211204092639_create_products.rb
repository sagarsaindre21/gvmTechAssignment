class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :description
      t.integer :category_id, add_index: :true
      t.integer :user_id, add_index: :true
      t.string :image

      t.timestamps
    end
  end
end
