class ListSerializer < ActiveModel::Serializer
  attributes :id

  has_many :products
end
