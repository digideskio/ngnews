class ItemsRepository
  def add(attrs)
    item = Item.new(attrs)
    item.save
    item
  end

  def all
    Item.all.order(start_date: :desc)
  end
end
