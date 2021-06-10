class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :strength
      t.integer :dexterity
      t.integer :consitution
      t.integer :charisma
      t.integer :intelligence
      t.integer :wisdom
      t.integer :will
      t.boolean :spellcaster
      t.float :max_inventory_weight
      t.float :inventory_weight
      t.string :inventory
      t.integer :user_id


      t.timestamps
    end
  end
end
