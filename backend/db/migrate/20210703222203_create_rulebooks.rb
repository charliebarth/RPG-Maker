class CreateRulebooks < ActiveRecord::Migration[6.1]
  def change
    create_table :rulebooks do |t|

      t.timestamps
    end
  end
end
