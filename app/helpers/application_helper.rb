module ApplicationHelper
	def all_products_content
		if @authenticated_user
				link_to "Home", root_path
			# @authenticated_user.products.each do |product|
			# 	# render 'all_products'
			# end
		else
			link_to "Logged Out" 
			# render :partial => 'shared/search'
		end
	end
end
