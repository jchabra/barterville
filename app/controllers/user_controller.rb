class UserController < ApplicationController
	def index
		@users = User.all
	end
	def new
		# raise params.inspect
		@user = User.new
	end
	def create
		@user = User.new(params[:user])
	    @user.save
	end
	def show
		user_id = params[:id]
		@user = User.find(user_id)
	end
	def update
		@user = User.find(params[:id])
	end
	def edit
		user = User.find(params[:id])
	end
	def destroy
		user = User.find(params[:id])
    	user.delete
	end
end