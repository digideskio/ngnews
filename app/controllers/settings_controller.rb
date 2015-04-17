class SettingsController < ApplicationController
  expose(:categories_repository) { CategoriesRepository.new }
  expose(:categories) { categories_repository.all }
  expose(:item)

  def index
  end
end
