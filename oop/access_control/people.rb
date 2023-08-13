class People
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  # Define public methods
  def eat
    puts 'Eat food'
  end

  def sleep
    puts 'Sleep at night'
  end

  def drink_water
    puts drink
  end

  def drive_a_car
    puts drive
  end

  # Define private methods
  private

  def drink
    'Drink water'
  end

  # Define protected methods
  protected

  def drive
    'Drive a car'
  end
end
