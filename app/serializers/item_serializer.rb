class ItemSerializer < ActiveModel::Serializer
  attributes :id, :kind, :source, :body
end
