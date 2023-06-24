class CartItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :size, :category, :quantity, :price , :picture
  belongs_to :user
end
