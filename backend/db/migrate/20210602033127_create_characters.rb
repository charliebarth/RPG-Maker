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
      t.string :inventory_units
      t.string :inventory
      t.integer :hunger
      t.integer :thirst
      t.integer :body_temp
      t.integer :hit_points
      t.string :defenses
      t.string :weaknesses
      t.string :conditions
      t.integer :stress
      t.string :proficiencies
      t.string :description
      t.string :notes
      t.string :extras
      t.integer :armor_class
      t.string :senses
      t.integer :user_id


      t.timestamps
    end
  end
end
