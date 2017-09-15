require 'pry'
require 'rest_client'

class WalmartApi
	def get_products_from_api
		api = RestClient.get("http://api.walmartlabs.com/v1/paginated/items?format=json&apiKey=v8az3c5y9xwj9tw6yzcjftpc")
		allProducts = JSON.parse(api)
		allProducts["items"].each do |product|
			Product.find_or_create_by(
				name: product["name"],
				available_online: product["availableOnline"],
				sale_price: product["salePrice"],
				short_description: product["shortDescription"],
				thumbnail_image: product["thumbnailImage"],
				stock: product["stock"],
				add_to_cart: product["addToCartUrl"],
				item_id: product["itemId"]
				)
		end

	end
end
