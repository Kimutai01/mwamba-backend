class MemberSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :phone_number, :date_of_birth, :county, :membership_category
end
