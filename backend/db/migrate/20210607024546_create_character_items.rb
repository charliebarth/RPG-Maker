class CreateCharacterItems < ActiveRecord::Migration[6.1]
  def change
    create_table :character_items do |t|
      t.integer :character_id
      t.integer :item_id
      t.boolean :attuned
      t.boolean :stored
      t.boolean :carried
      t.boolean :in_use
      t.string :notes

      t.timestamps
    end
  end
end
