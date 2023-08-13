require './people.rb'

class Teacher < People
  attr_accessor :subject

  def initialize(name, age, subject)
    super(name, age)
    @subject = subject
  end

  def print_teacher_info
    puts "Name: #{name}, Age: #{age}, Subject: #{subject}"
  end

  def teach
    puts "Teach #{subject}"
  end

  def test
    puts "Test #{subject}"
  end
end
