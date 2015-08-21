class Item < ActiveRecord::Base
  scope :sort_by_time_desc, -> { order(start_date: :desc) }

  validates :body, :category, :start_date, presence: true

  # rubocop:disable Rails/FindEach
  CategoriesRepository.new.all.each do |cat|
    define_method "is_#{cat}?" do
      category == cat
    end
  end
  # rubocop:enable Rails/FindEach

  def is_event?
    start_date.present? && end_date.present?
  end
end
