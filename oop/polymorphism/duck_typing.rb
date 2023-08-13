class Cat
  def speak
    puts 'Meow!'
  end
end

class Duck
  def speak
    puts 'Quack!'
  end
end

def make_animal_speak(animal)
  # puts 'Meow!' if animal.is_a?(Cat)
  # puts 'Quack!' if animal.is_a?(Duck)
  animal.speak
end

cat = Cat.new
duck = Duck.new

make_animal_speak(cat)
make_animal_speak(duck)
