require 'pry'
require 'rest_client'

class WalmartApi
	def get_products_from_api
		api = RestClient.get("http://api.walmartlabs.com/v1/paginated/items?format=json&apiKey=v8az3c5y9xwj9tw6yzcjftpc")
		allProducts = JSON.parse(api)
		allProducts["items"].each do |item|
			product = Product.find_by(item_id: item["itemId"])
			product_params = {
					name: item["name"],
					available_online: item["availableOnline"],
					sale_price: item["salePrice"],
					short_description: item["shortDescription"],
					thumbnail_image: item["thumbnailImage"],
					stock: item["stock"],
					add_to_cart: item["addToCartUrl"],
					item_id: item["itemId"]}
			if product
				product.update(product_params)
			else
				Product.create(product_params)
			end
		end
	end
end
