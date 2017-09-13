class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :available_online, :sale_price, :short_description, :thumbnail_image, :stock, :add_to_cart, :item_id

  belongs_to :list, optional: true
end
