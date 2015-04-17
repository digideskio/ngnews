class HomeController < ApplicationController
  expose(:items_repository) { ItemsRepository.new }
  expose(:items) { ItemDecorator.decorate_collection(items_repository.filter_by(query_params)) }
  expose(:categories_repository) { CategoriesRepository.new }
  expose(:categories) { categories_repository.all }

  private

  def query_params
    cats = CategoriesRepository.new.all.map(&:to_sym)
    params.fetch(:q, {}).permit(*cats)
  end
end
