class HomesController < ApplicationController
  
  def index
  	@users = User.all 
  end

  def new
  	@user = User.new
  end

  def create 
  	@user = User.create(params[:user][:name],params[:user][:email],params[:user][:age],params[:user][:phone])
  	redirect_to root_path
  end

end
