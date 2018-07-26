class Apartment < ApplicationRecord
  belongs_to :user
  validates :street, :city, :zip, :state, :country, presence:true

  resourcify
end
