class UsersController < ApplicationController
  
	def index
        @users = User.all 
    end 
    
    def new
      @user =  User.new  
    end 
      
    def create
      @user = User.create(user_params)
      respond_to :js
    end 
    
  	private
  
  	def user_params
    	params.require(:user).permit(:name,:email,:age,:phone)
  	end
end
