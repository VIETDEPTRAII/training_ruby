class Student
  def eat(food, time = nil)
    return "Eat #{food}" if time.nil?

    "Eat #{food} #{time}"
  end
end

student = Student.new
puts student.eat('noodles')
puts student.eat('noodles', 'every day')
