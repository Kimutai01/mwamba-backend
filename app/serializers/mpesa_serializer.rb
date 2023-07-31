class MpesaSerializer < ActiveModel::Serializer
  attributes :id, :Message, :Success, :Status, :Amount, :transaction_code, :transaction_reference
end
