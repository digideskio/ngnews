module Entities
  class ItemEntity < Grape::Entity
    root 'items', 'item'
    expose :body, documentation: { type: "string", desc: "Content of the entry" }
  end
end
