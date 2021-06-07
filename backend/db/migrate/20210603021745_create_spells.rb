class CreateSpells < ActiveRecord::Migration[6.1]
  def change
    create_table :spells do |t|
      t.string :name
      t.string :system
      t.string :description
      t.string :modifiers
      t.string :requirements
      t.integer :point_cost # These might get removed and be replaced with a minimum 
      # requirment and then a choice on the player side as to how many points / how high a 
      # spell slot they would like to use
      t.integer :spell_slot_cost # ^^^
      t.integer :master_spell_list_id

      t.timestamps
    end
  end
end
