# #!/usr/bin/ruby
require 'date'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


def get_day_of_week(date)
  date.strftime('%A')
end

def get_elliptical_minutes(today)
  minutes = 30
  if(today == "Saturday" || today == "Sunday")
    minutes = 0
  end
  minutes
end

def get_elliptical_distance(today)
  distance = 3 # miles
  if(today == "Saturday" || today == "Sunday")
    distance = 0
  end
  distance
end

def get_note(today)
  note = "Error if I don't change"
  case today
    when "Monday"
      note = "Back Day"
    when "Tuesday"
      note = "Legs today!"
    when "Wednesday"
      note = "Chest Day"
    when "Thursday"
      note = "Bis and Tris"
    when "Friday"
      note = "Shoulders"
    when "Saturday"
      note = "Day Off"
    when "Sunday"
      note = "Day Off"
  end #case
  note
end # get_note


def start_seed
  #user variables
  user = User.create!(firstname: "Marty", lastname: "Zuckerberg", username: "mzuckerberg")
  id = user.id
  #starting variables
  counter = 0
  weight = 300
  waist = 50
  date = Time.new(2018,5,1).to_date
  today = "Error in method if not changed"
  note = ""
  stop_eat_at_x = true
  minutes = 30
  distance = 0
  ate_sugar = false
  carbs_time_stopped_eating = "6pm"

  while counter < 120 do
    today = get_day_of_week(date)
    note = get_note(today)
    minutes = get_elliptical_minutes(today)
    distance = get_elliptical_distance(today)

    # if Friday , cheat meals, eat after 6pm ok
    today == "Friday" ? stop_eat_at_x = false : stop_eat_at_x = true
    today == "Friday" ? carbs_time_stopped_eating = "11pm" : carbs_time_stopped_eating = "6pm"
    today == "Friday" ? ate_sugar = true : ate_sugar = false

    #save to db
    WaistSize.create!( inches: waist.ceil, user_id: id, date: date)
    Lift.create!(notes: note, user_id: id, date: date)
    Weight.create!(weight: weight.ceil, user_id: id, date: date)
    Carb.create!(stop_eat_at_x: stop_eat_at_x, time: carbs_time_stopped_eating, user_id: id, date: date)
    Elliptical.create!(minutes: minutes, distance: distance, user_id: id, date: date)
    Sugar.create!(ate_sugar: ate_sugar, user_id: id, date: date)

    #changes for the next iteration of loop
    waist = waist - 0.07
    weight = weight - 0.3
    date += 1
    counter +=1
    # puts "waist : #{waist.ceil}, weight: #{weight.ceil}, date: #{date}"
  end
end

start_seed
