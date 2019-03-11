class Transaction < ApplicationRecord
	belongs_to :coin

	def format_time
  		created_at.strftime("%m.%d.%y")
  	end
end
