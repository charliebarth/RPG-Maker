class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.boolean :storage
      t.float :max_inventory_weight
      t.string :inventory_units

      t.timestamps
    end
  end
end
