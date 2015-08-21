module Entities
  class ItemEntity < Grape::Entity
    include ActionView::Helpers
    root 'items', 'item'
    expose :body, documentation: { type: "string", desc: "Content of the entry" }
    expose :date do |item, options|
      if item.is_event?
        "#{item.start_date} - #{item.end_date}"
      else
        if item.start_date == Date.current
          "Today..."
        else
          "#{time_ago_in_words(item.start_date)} ago"
        end
      end
    end
  end
end
