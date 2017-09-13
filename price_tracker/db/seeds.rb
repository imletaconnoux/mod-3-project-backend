require_relative "../config/environment"
require_all "lib"

product_adapter = WalmartApi.new
product_adapter.get_products_from_api

list = List.create(name: "list")
# list = List.create()
# list.products << {
#   id: 1,
#   name: "Rose Cottage Girls' Hunter Green Jacket Dress",
#   available_online: true,
#   sale_price: 14,
#   short_description: "Paired with its' trendy jacket or worn alone, this dress will go anywhere in style.",
#   thumbnail_image: "https://i5.walmartimages.com/asr/bf44e8ee-5291-406b-9e85-3974ba1a08d1_1.b2a17e0e5ea5c3ef700b6e25ebb94cf0.jpeg?odnHeight=100&odnWidth=100&odnBg=ffffff",
#   stock: "Available",
#   add_to_cart: "http://c.affil.walmart.com/t/api01?l=http%3A%2F%2Faffil.walmart.com%2Fcart%2FaddToCart%3Fitems%3D107%7C1%26affp1%3D-nfxEU4JdbRqxSno5B_GxBZ_ILYv1AZLQT3nVywLJC4%26affilsrc%3Dapi%26veh%3Daff%26wmlspartner%3Dreadonlyapi",
#   item_id: 107
#   list_id: nil
# }
# list.save
