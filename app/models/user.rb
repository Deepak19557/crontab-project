class User < ApplicationRecord
	after_create :tech_soft
	def tech_soft
		puts 'tech soft'
	end
end
