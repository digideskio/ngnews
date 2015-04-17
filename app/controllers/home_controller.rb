class HomeController < ApplicationController
  expose(:items_repository) { ItemsRepository.new }
  expose(:items) { ItemDecorator.decorate_collection(items_repository.all) }

  def index
  end
end
