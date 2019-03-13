class Transaction < ApplicationRecord
 	belongs_to :coin
 	belongs_to :user 

 	validate :coin_exists_on_withdrawal

 	#after_create call back function every time a create action is triggered
 	#send grid

 	def coin_exists_on_withdrawal
 		return if deposited
 		deposits = Transaction.where(user_id: user_id, coin_id: coin_id, deposited: true)
 		withdrawals = Transaction.where(user_id: user_id, coin_id: coin_id, deposited: false)
 		balance = deposits.count - withdrawals.count
 		errors.add(:deposited, "invalid coins") if balance <= 0  
 	end	

	def format_time
  		created_at.strftime("%m.%d.%y")
  	end
end
