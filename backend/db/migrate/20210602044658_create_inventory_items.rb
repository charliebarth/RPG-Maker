class CreateInventoryItems < ActiveRecord::Migration[6.1]
  def change
    create_table :inventory_items do |t|
      t.integer :item_id
      t.integer :inventory_id

      t.timestamps
    end
  end
end
