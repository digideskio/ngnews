class Item < ActiveRecord::Base
  validates :body, :category, presence: true
end
