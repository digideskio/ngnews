class ItemSerializer < ActiveModel::Serializer
  include ActionView::Helpers
  attributes :id, :category, :sub_category, :start_date, :source, :body, :display_date, :icon_name, :end_date

  def display_date
    if object.is_event?
      "#{start_date} - #{end_date}"
    else
      return "Today..." if start_date == Date.current
      "#{time_ago_in_words(start_date)} ago"
    end
  end

  def icon_name
    #random_icon
    icons[object.category.to_sym || object.subcategory.to_sym] || random_icon
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
