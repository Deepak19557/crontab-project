namespace :bird do 
	desc "best"
	task fly: :environment do 
		@user = User.where(block: false)
		puts 'success'
		@user.update(block: true)
	end
end
