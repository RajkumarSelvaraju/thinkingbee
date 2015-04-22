class MyNavigation < ActiveAdmin::Component
	def build(namespace, menu)
		render :partial => "/layouts/admin"
	end			
end