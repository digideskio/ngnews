class ItemSerializer < ActiveModel::Serializer
  attributes :id, :category, :sub_category, :start_date, :source, :body
end
