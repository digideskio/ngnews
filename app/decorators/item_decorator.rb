class ItemDecorator < Draper::Decorator
  include ActionView::Helpers::DateHelper

  delegate :body, :start_date, :end_date, :is_event?, to: :item

  def display_date
    if object.is_event?
      "#{start_date} - #{end_date}"
    else
      return "Today..." if start_date == Date.current
      "#{time_ago_in_words(start_date)} ago"
    end
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
