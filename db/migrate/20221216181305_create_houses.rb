class CreateHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :houses do |t|
      t.string :address
      t.string :state
      t.string :zip
      t.integer :sq_ft
      t.belongs_to :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
