class ItemsRepository
  def add(attrs)
    item = Item.new(attrs)
    item.save
    item
  end
end
