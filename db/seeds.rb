# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

transaction = Transaction.new(user_id: 1, coin_id: 3, deposited: true)
transaction.save

transaction = Transaction.new(user_id: 1, coin_id: 5, deposited: true)
transaction.save

transaction = Transaction.new(user_id: 1, coin_id: 6, deposited: true)
transaction.save

transaction = Transaction.new(user_id: 1, coin_id: 7, deposited: true)
transaction.save

transaction = Transaction.new(user_id: 1, coin_id: 8, deposited: true)
transaction.save

transaction = Transaction.new(user_id: 1, coin_id: 9, deposited: true)
transaction.save

transaction = Transaction.new(user_id: 1, coin_id: 10, deposited: true)
transaction.save

transaction = Transaction.new(user_id: 1, coin_id: 11, deposited: true)
transaction.save

transaction = Transaction.new(user_id: 2, coin_id: 12, deposited: true)
transaction.save

transaction = Transaction.new(user_id: 2, coin_id: 13, deposited: true)
transaction.save

transaction = Transaction.new(user_id: 2, coin_id: 14, deposited: true)
transaction.save

transaction = Transaction.new(user_id: 2, coin_id: 15, deposited: true)
transaction.save

transaction = Transaction.new(user_id: 2, coin_id: 16, deposited: true)
transaction.save


