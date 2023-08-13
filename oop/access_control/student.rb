require './people.rb'

class Student < People
  attr_accessor :student_code

  def initialize(name, age, student_code)
    super(name, age)
    @student_code = student_code
  end

  def print_student_info
    puts "Name: #{name}, Age: #{age}, Student Code: #{student_code}"
  end

  def study
    puts 'Study OOP programing'
  end

  def do_exam
    puts 'Do OOP programing exam'
  end

  def drink_water_at_night
    puts drink + ' at night'
  end

  def drive_a_car_every_day
    puts drive + ' every day'
  end

  def drink_water_in_the_morning
    people = People.new('Mary', 20)
    result = people.drink + ' in the morning'
    puts result
  end

  def drive_a_car_in_the_morning
    people = People.new('Mary', 20)
    result = people.drive + ' in the morning'
    puts result
  end
end
