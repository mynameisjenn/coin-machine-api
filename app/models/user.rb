class User < ApplicationRecord
	has_many :transactions
	
	has_secure_password
  	validates :email, presence: true, uniqueness: true
end
