class CreateCharacterSpells < ActiveRecord::Migration[6.1]
  def change
    create_table :character_spells do |t|

      t.timestamps
    end
  end
end
