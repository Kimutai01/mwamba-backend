class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :photo
  has_many :categories
end
