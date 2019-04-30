class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :country_id
      t.integer :state_id
      t.integer :city_id
      t.integer :postcode
      t.date :start_date
      t.boolean :active

      t.timestamps
    end
  end
end
