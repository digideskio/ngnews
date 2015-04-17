class ItemsRepository
  def add(attrs)
    Item.create(attrs)
  end

  def all
    Item.sort_by_time_desc
  end

  def filter_by(cat_names)
    return all unless cat_names.any?
    cats = cat_names.keys
    Item.where(category: cats).order(start_date: :desc)
  end
end
