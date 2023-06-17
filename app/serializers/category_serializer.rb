class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :sizes
  belongs_to :product
end
