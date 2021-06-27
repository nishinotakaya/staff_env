# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Staff.create!(name: "A",
             email: "sample@email.com",
             cellphone: "09000000")


Staff.create!(name: "B",
             email: "sample-1@email.com",
             cellphone: "09011111")

Staff.create!(name: "C",
             email: "sample-2@email.com",
             cellphone: "0902222222")           

Staff.create!(name: "D",
             email: "sample-3@email.com",
            cellphone: "0903333333")


Staff.create!(name: "E",
            email: "sample@email.com",
            cellphone: "09044444")