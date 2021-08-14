class CreateMagicAbilities < ActiveRecord::Migration[6.1]
  def change
    create_table :magic_abilities do |t|
      t.text :magic_types, array: true # Array containing each magic system availiable to the character
      t.integer :total_magic_points
      t.integer :remaining_magic_points
      t.string :total_spell_slots # Will be a hash containing number of s
      #lots at each spell slot lv
      t.string :remaining_spell_slots # ^^^
      t.integer :character_id

      t.timestamps
    end
  end
end
