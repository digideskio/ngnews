class ItemDecorator < Draper::Decorator
  include ActionView::Helpers::DateHelper

  delegate :body, to: :item

  def display_date
    from_time = (object.is_event? ? object.end_date : object.start_date).to_time
    return if from_time.nil?
    "#{distance_of_time_in_words(from_time, Time.zone.today)} ago"
  end
end
