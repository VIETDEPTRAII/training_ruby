require './database.rb'

class Address < Database
  attr_accessor :city, :street

  def initialize(city, street, database_name = 'development_database.db')
    super(database_name)
    @city = city
    @street = street
  end

  def print_user_info_and_address(user)
    # Tìm user trong database
    users = find_database_instance.execute('SELECT * FROM users WHERE email = :email', email: user.email)
    user = users.first

    # In ra thông tin user và thông tin address dựa trên điều kiền query của user
    if user != nil
      puts "Email: #{user[1]}, Name: #{user[3]}, City: #{city}, Street: #{street}"
    else
      puts "City: #{city}, Street: #{street}"
    end
  end
end
