class CreateSpellLists < ActiveRecord::Migration[6.1]
  def change
    create_table :spell_lists do |t|
      t.integer :magic_ability_id
      t.string :spell

      t.timestamps
    end
  end
end
