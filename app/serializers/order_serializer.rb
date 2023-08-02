class OrderSerializer < ActiveModel::Serializer
  attributes :id, :products, :quantity, :total_price, :phone_number, :status , :user_id
end
