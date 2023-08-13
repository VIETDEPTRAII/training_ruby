class People
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def eat
    puts 'Eat food'
  end

  def sleep
    puts 'Sleep at night'
  end
end
