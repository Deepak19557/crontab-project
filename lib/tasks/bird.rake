# namespace :bird do
#   desc "TODO"
#   task fly: :environment do
#   	puts "welcome"
#   end

# end

namespace :bird do 
	desc "best"
	#debugger
	task fly: :environment do 
		@user = User.where(block: false)
		puts 'success'
		#@user = Member.first
		@user.update(block: true)
	end
end
