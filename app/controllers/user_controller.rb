class UserController < ApplicationController
	def index
		users = User.all
	end
	def new
		user = User.new
	end
	def create
		@user = User.new(params[:user])
	    @user.username = @user.username.downcase
	    @user.save
	end
	def show
		user_id = params[:id]
	end
	def edit
		user = User.find(params[:id])
	end
	def destroy
		user = User.find(params[:id])
    	user.delete
	end
end