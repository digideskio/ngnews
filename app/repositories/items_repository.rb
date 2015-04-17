class ItemsRepository
  def add(attrs)
    item = Item.new(attrs)
    item.save
    item
  end

  def all
    Item.all.order(start_date: :desc)
  end

  def filter_by(cat_names)
    return all unless cat_names.any?
    cats = cat_names.keys
    Item.where(category: cats).order(start_date: :desc)
  end
end
