# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
apartment_attributes = [
    {
        street: "20917 Amie Ave., Apt. 24",
        city: "Torrace",
        zip: "90503",
        state: "CA",
        country: "USA",
    },
    {
        street: "3465 Lebon Drive, Apt. 1715",
        city: "San Diego",
        zip: "92122",
        state: "CA",
        country: "USA",
    }
]

contact_attributes = [
    {
        name: "Carlos",
        number:"0000000000",
        hours: "9AM - 5PM"
    },
    {
        name: "Jack",
        number:"1111111111",
        hours: "9AM - 5PM"
    }
]

apartment_attributes.each do |attributes|
    Apartment.create(attributes)
end

contact_attributes.each do |attributes|
    Contact.create(attributes)
end



user_attributes = [{
    name: "Carlos",
    email: "gmail@gmail.com",
    password_digest: "password"
}]
user_attributes.each do |attributes|
    User.create(attributes)
end
