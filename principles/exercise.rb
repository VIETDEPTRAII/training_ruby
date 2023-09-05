require './user.rb'
require './address.rb'

user = User.new('john_henry@gmail.com', 'password', 'John', 'Henry')
# user.create_account
# user.update_account

address = Address.new('TP.HCM', 'Q12, CVPM Quang Trung')
# address.print_user_info_and_address(user)
