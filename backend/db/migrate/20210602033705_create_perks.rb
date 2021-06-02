class CreatePerks < ActiveRecord::Migration[6.1]
  def change
    create_table :perks do |t|

      t.timestamps
    end
  end
end
