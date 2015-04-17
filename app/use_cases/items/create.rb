module Items
  class Create
    attr_accessor :items_repository, :attrs

    def initialize(items_repository, attrs)
      self.items_repository = items_repository
      self.attrs = attrs
    end

    def call
      item = items_repository.add attrs
      if item.valid?
        Response::Success.new(data: item)
      else
        Response::Error.new(errors: item.errors.full_messages)
      end
    end
  end
end
