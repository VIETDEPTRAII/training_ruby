class People
  def eat(food)
    "Eat #{food}"
  end
end

class Student < People
  def eat(food)
   super + ' every day'
  end
end

class Teacher < People
  def eat(food)
    super + ' in the morning'
  end
end

people = People.new
puts people.eat('food')

student = Student.new
puts student.eat('noodles')

teacher = Teacher.new
puts teacher.eat('beefsteak')
