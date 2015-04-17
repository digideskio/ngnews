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
      ItemCategoryValidator.new(item, items_repository).validate!
      if item.errors.empty?
        Response::Success.new(data: item)
      else
        Response::Error.new(errors: item.errors.full_messages)
      end
    end

    private

    def valid_item_category?(_item)
    end

    class ItemCategoryValidator
      attr_accessor :item, :categories_repository

      def initialize(item, categories_repository)
        self.item = item
        self.categories_repository = categories_repository
      end

      def validate!
        validate_category! && validate_sub_category!
      end

      private

      def validate_category!
        return if categories_repository.include? item.category
        item.errors.add :category, "is not allowed"
      end

      def validate_sub_category!
        return if item.sub_category.blank? ||
                  categories_repository.subcategories_for(category)
                  .include?(sub_category)
        item.errors.add :sub_category, "is not allowed"
      end
    end
  end
end
