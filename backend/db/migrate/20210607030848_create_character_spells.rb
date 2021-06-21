class CreateCharacterSpells < ActiveRecord::Migration[6.1]
  def change
    create_table :character_spells do |t|
      t.integer :magic_ability_id
      t.integer :spell_id
      t.string :custom_changes

      t.timestamps
    end
  end
end
