class CreateMagicAbilities < ActiveRecord::Migration[6.1]
  def change
    create_table :magic_abilities do |t|
      t.string :magic_type
      t.integer :magic_points
      t.integer :character_id

      t.timestamps
    end
  end
end
