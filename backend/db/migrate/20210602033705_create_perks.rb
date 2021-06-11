class CreatePerks < ActiveRecord::Migration[6.1]
  def change
    create_table :perks do |t|
      t.string :name
      t.string :description
      t.string :modifiers

      t.timestamps
    end
  end
end