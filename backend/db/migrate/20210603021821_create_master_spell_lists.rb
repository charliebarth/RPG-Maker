class CreateMasterSpellLists < ActiveRecord::Migration[6.1]
  def change
    create_table :master_spell_lists do |t|
      t.string :title

      t.timestamps
    end
  end
end
