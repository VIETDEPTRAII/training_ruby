require './database.rb'
require 'bcrypt'

class User < Database
  attr_accessor :email, :password, :first_name, :last_name

  def initialize(email, password, first_name, last_name, database_name = 'development_database.db')
    super(database_name)
    @email = email
    @password = password
    @first_name = first_name
    @last_name = last_name
  end

  def create_account
    # Format thông tin của user account
    formated_email = email.downcase
    hashed_password = BCrypt::Password.create(password)
    name = first_name + ' ' + last_name
    user_params = { email: formated_email, password: hashed_password, name: name }

    # Kiểm tra email của user account đã tồn tại chưa
    users = find_database_instance.execute('SELECT * FROM users WHERE email = :email', email: user_params[:email])
    return puts 'Email already exists, please choose another!' if users.first != nil

    # Lưu user account vào database
    find_database_instance.execute('INSERT INTO users (email, password, name) VALUES (:email, :password, :name)', user_params)
    find_database_instance.close
  end

  def update_account
    # Format thông tin của user account
    formated_email = email.downcase
    hashed_password = BCrypt::Password.create(password)
    name = first_name + ' ' + last_name
    user_params = { email: formated_email, password: hashed_password, name: name }

    # Kiểm tra email của user account đã tồn tại chưa
    users = find_database_instance.execute('SELECT * FROM users WHERE email = :email', email: user_params[:email])
    return puts 'Email does not exists!' if users.first == nil

    # Update user account trong database
    find_database_instance.execute('UPDATE users SET password = :password, name = :name WHERE email = :email', user_params)
    find_database_instance.close
  end
end
