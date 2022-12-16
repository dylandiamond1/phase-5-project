class CreateSchools < ActiveRecord::Migration[7.0]
  def change
    create_table :schools do |t|
      t.string :school_name
      t.belongs_to :cities, null: false, foreign_key: true

      t.timestamps
    end
  end
end
