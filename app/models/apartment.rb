class Apartment < ApplicationRecord
    validates :street, :city, :zip, :state, :country, presence:true
end
