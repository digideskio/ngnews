class ItemSerializer < ActiveModel::Serializer
  attributes :id, :category, :source, :body
end
