class UsersController < ApplicationController
	def index
		@users = User.all

	end
	def new
		@user = User.new
	end
	def create
		@user = User.new(params[:user])
	    if @user.save
	    	session[:username] = @user.username
			session[:id] = @user[:id]
			Mailings.welcome(@user.username).deliver
	    	redirect_to new_product_path
	    else
	    	render :new
	    end
	end
	def show
		user_id = params[:id]
		@user = User.find(user_id)
	end
	def update
		@user = User.find(params[:id])
		if @user.update_attributes(params[:user])
	    	redirect_to user_path
	    else
	      render :edit
	    end
	end
	def edit
		@user = User.find(params[:id])
		if session[:id] != params[:id]
			redirect_to users_path
		end
	end
	def destroy
		if session[:id] != params[:id]
			redirect_to users_path
		else
			user = User.find(params[:id])
	    	user.delete
		end
	end
end