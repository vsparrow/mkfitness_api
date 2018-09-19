# #!/usr/bin/ruby
# require 'date'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create!(firstname: "Marty", lastname: "Zuckerberg", username: "mzuckerberg")
id = user.id

counter = 0
weight = 300
waist = 46
while counter < 120 do
  date = Time.new(2018,3,5).to_date
         # Time.new(2001,2,3).to_date
  # puts `date is #{date}, weight is #{weight}`
  # puts "weight is #{weight}"

  waist = waist - .1
  weight = weight - 0.3
  date += 1
  counter +=1
end

puts "waist : #{waist}, weight: #{weight}, date: #{date}"
