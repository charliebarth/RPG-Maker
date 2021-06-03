class CreateSpellLists < ActiveRecord::Migration[6.1]
  def change
    create_table :spell_lists do |t|
      t.integer :magic_ability_id
      t.integer :spell_id

      t.timestamps
    end
  end
end
