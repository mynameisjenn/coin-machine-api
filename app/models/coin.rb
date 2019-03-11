class Coin < ApplicationRecord
	has_many :transactions

	def self.total
		sum = 0
		self.all.each do |coin, value|
			sum += coin.value
			end
		return sum
	end
end
