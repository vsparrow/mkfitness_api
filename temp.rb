# #!/usr/bin/ruby
require 'date'

def get_note(date)
  # puts "Date is #{date}, #{date.strftime('%A')}" #get day of week
  today = date.strftime('%A')
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


counter = 0
weight = 300
waist = 50
date = Time.new(2018,3,5).to_date
note = ""
stop_eat_at_x = true
while counter < 20 do

         # Time.new(2001,2,3).to_date
  # puts `date is #{date}, weight is #{weight}`
  # puts "weight is #{weight}"
  note = get_note(date)
  # puts note
  # if Friday (shoulder day), cheat meals, eat after 6pm ok
  note == "Shoulders" : stop_eat_at_x = false : stop_eat_at_x : true
  waist = waist - 0.05
  weight = weight - 0.3
  date += 1
  counter +=1
end

puts "waist : #{waist}, weight: #{weight}, date: #{date}"
