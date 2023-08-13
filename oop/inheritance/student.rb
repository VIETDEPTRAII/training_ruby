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
end
