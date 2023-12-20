# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user = User.find_or_create_by(name: "Rory", email: "rory@example.com")
account = Account.find_or_create_by(user: user, balance: 0.00, account_number: "1234567890")
transaction = Transaction.find_or_create_by(account: account, transaction_type: "deposit", amount: 100.00)
