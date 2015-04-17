module Items
  class Create
    attr_accessor :attrs, :items_repository, :categories_repository

    def initialize(attrs, items_repository = nil, categories_repository = nil)
      self.attrs = attrs
      self.items_repository = items_repository || ItemsRepository.new
      self.categories_repository = categories_repository ||
        CategoriesRepository.new
    end

    def call
      item = items_repository.add attrs
      if item.valid? && valid_item_category?(item)
        Response::Success.new(data: item)
      else
        Response::Error.new(errors: item.errors.full_messages)
      end
    end

    private

    def valid_item_category?(item)
      return true if categories_repository.include? item.category
      item.errors.add :category, "is not allowed"
      false
    end
  end
end
