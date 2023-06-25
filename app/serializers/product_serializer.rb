class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :photo , :rotating_images
  has_many :categories
end
