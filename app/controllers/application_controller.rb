class ApplicationController < ActionController::Base
	protect_from_forgery

	before_filter :authenticate_user
	private
	def authenticate_user
	   if session[:id]
	      @authenticated_user = User.find(session[:id])
	   else
	      @authenticated_user = nil
	      # redirect_to login_path
	   end
	end
end
