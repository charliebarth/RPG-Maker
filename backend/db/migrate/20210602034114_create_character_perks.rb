class CreateCharacterPerks < ActiveRecord::Migration[6.1]
  def change
    create_table :character_perks do |t|
      t.integer :character_id
      t.integer :perk_id
      t.integer :remaining_uses
      t.string :source

      t.timestamps
    end
  end
end
