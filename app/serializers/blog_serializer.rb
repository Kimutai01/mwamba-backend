class BlogSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :excerpt
end
