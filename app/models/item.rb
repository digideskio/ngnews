class Item < ActiveRecord::Base
  validates :body, :category, :start_date, presence: true

  # rubocop:disable Rails/FindEach
  CategoriesRepository.new.all.each do |cat|
    define_method "is_#{cat}?" do
      category == cat
    end
  end
  # rubocop:enable Rails/FindEach
end
