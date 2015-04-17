class ItemsRepository
  def add(attrs)
    item = Item.new(attrs)
    item.save
    item
  end

  def all
    Item.all
  end
end
