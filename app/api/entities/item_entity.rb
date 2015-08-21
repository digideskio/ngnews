module Entities
  class ItemEntity < Grape::Entity
    root 'items', 'item'
    expose :id
    expose :category, documentation: { type: "string", desc: "Category of the entry." }
    expose :sub_category, documentation: { type: "string", desc: "Sub category of the entry" }
    expose :start_date, documentation: { type: "date", desc: "Date the news was posted." }
    expose :source, documentation: { type: "string", desc: "Where the entry came from" }
    expose :body, documentation: { type: "string", desc: "Content of the entry" }
  end
end
