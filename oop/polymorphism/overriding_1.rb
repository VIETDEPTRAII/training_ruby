class People
  def eat
    puts 'Eat food'
  end
end

class Student < People
  def eat
    puts 'Eat noodles'
  end
end

class Teacher < People
  def eat
    puts 'Eat beefsteak'
  end
end

people = People.new
people.eat

student = Student.new
student.eat

teacher = Teacher.new
teacher.eat
