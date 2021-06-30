class UsersController < ApplicationController
  # def index
  # 	@users = User.all 
  # end

  # def new
  # 	@user = User.new
  # end

  # def create 
  # 	@user = User.create(name:params[:user][:name],email:params[:user][:email],age:params[:user][:age],phone:params[:user][:phone])
  # 	redirect_to root_path
  # 	#respond_to: js
  # end

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
