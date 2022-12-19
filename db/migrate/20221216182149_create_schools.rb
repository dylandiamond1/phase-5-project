class CreateSchools < ActiveRecord::Migration[7.0]
  def change
    create_table :schools do |t|
      t.string :elementary_school
      t.string :middle_school
      t.string :high_school
      t.belongs_to :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
