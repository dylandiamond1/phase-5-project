class CreateArchitects < ActiveRecord::Migration[7.0]
  def change
    create_table :architects do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :company_name
      t.string :contact_number
      t.string :website_url
      t.belongs_to :houses, null: false, foreign_key: true

      t.timestamps
    end
  end
end
