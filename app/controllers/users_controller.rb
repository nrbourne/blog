class UsersController < ApplicationController
  def new
  	@user = Users.new	
  end
 	
 def create
 	@user = Users.new(params[:user])
  	if @user.save
   		redirect_to root_url, notice: 'User created'
   	else
   		render action: new
 	end
 end

 def show
 	@user = Users.find(params[:user_id])
 end
end
