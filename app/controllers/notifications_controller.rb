class NotificationsController < ApplicationController
	def index
		@to_notifications = Notification.where(:to_user => @authenticated_user.id)
		@from_notifications = Notification.where(:from_user => @authenticated_user.id)
	end
	def new
	end
	def show
	end
	def create
		from_product = params[:proposed_trade]
		from_user = session[:id]
		to_product = params[:product]
		to_user = params[:owner]
		@notification = Notification.create(:from_product => from_product, :to_product => to_product, :from_user => from_user, :to_user => to_user)
		redirect_to root_path
	end

end