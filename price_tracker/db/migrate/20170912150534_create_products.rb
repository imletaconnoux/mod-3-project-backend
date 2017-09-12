class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.boolean :available_online
      t.integer :sale_price
      t.string :short_description
      t.string :thumbnail_image
      t.string :stock
      t.string :add_to_cart
      t.integer :item_id
      t.integer :list_id, :default => nil
    end
  end
end
