class CartItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :size, :category, :quantity, :price
end
