require './people.rb'
require './student.rb'

people = People.new('Donny', 40)
people.eat
# people.drink
# people.drive
people.drink_water
people.drive_a_car

puts '================================================================'

student = Student.new('John', 18, '001')
student.eat
# student.drink
# student.drive
student.drink_water
student.drive_a_car
student.drink_water_at_night
student.drive_a_car_every_day
# student.drink_water_in_the_morning
student.drive_a_car_in_the_morning
