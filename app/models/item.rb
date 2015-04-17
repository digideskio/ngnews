class Item < ActiveRecord::Base
  validates :body, :category, :start_date, presence: true
end
