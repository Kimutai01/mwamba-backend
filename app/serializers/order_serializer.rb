class OrderSerializer < ActiveModel::Serializer
  attributes :id, :product, :total_price, :phone_number, :status  , :customer_location , :customer_name , :customer_email , :category , :size
end
