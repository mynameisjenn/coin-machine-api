# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# coin = Coin.new(name: "quarter", value: 0.25)
# coin.save

# coin = Coin.new(name: "dime", value: 0.10)
# coin.save

# coin = Coin.new(name: "nickel", value: 0.05)
# coin.save

# coin = Coin.new(name: "penny", value: 0.01)
# coin.save

transaction = Transaction.new(coin_id: 19, deposited: true, user_id: 1)
transaction.save

