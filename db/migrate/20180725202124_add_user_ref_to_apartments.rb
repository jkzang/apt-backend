class AddUserRefToApartments < ActiveRecord::Migration[5.2]
  def change
    add_reference :apartments, :user, foreign_key: true
  end
end
