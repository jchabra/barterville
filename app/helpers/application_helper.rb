module ApplicationHelper
	def login_or_logout_link
		if @authenticated_user
			link_to "Logout", logout_path
		else
			link_to "Login", login_path
		end
	end

	#Product Helper

	def all_products_content
		if @authenticated_user
			render 'all_products'
		else
			link_to "Please Log In To See Your Products", login_path
		end
	end

	def trade_options
		if @product_owner != @authenticated_user
			render 'trading'
		end
	end

	#User helpers

	def edit_or_from_link
		if @product_owner == @authenticated_user
			link_to "You (Edit Product)", edit_product_path(@product) 
		else
			link_to @product_owner.username, @product_owner
		end
	end
end
