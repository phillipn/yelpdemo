module RestaurantsHelper
	def image_attached?
		!!@restaurant.image_url
	end
end
