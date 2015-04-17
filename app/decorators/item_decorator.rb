class ItemDecorator < Draper::Decorator
  include ActionView::Helpers::DateHelper

  delegate :body, to: :item

  def display_date
    from_time = object.is_event? ? object.end_date : object.start_date
    return if from_time.nil?
    "#{distance_of_time_in_words(from_time, Time.zone.today)} ago"
  end

  def icon_name
    icons[item.category.to_sym || item.subcategory.to_sym] || random_icon
  end

  def random_icon
    %w(ss-award ss-ribbon ss-medal ss-crayons ss-pencilbrush ss-lightning).sample
  end

  def icons
    {
      people: "ss-usergroup",
      link: "ss-link",
      props: "ss-like",
      blog: "ss-notice",
      event: "ss-calendar",
      office: "ss-warehouse",
      misc: "ss-whale",
    }
  end
end
