class ItemDecorator < Draper::Decorator
  delegate :body, to: :item
end
