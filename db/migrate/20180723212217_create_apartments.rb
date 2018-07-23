class CreateApartments < ActiveRecord::Migration[5.2]
  def change
    create_table :apartments do |t|
      t.string :street
      t.string :city
      t.string :zip
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
