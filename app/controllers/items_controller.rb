class ItemsController < ApplicationController
  expose(:items_repository) { ItemsRepository.new }
  expose(:item, attributes: :item_attrs)
  expose(:categories_repository) { CategoriesRepository.new }
  expose(:categories) { categories_repository.all }

  def create
    create_item = Items::Create.new(item_attrs).call
    if create_item.success?
      redirect_to settings_path
    else
      render action: :new
    end
  end

  def index
    render json: items_repository.all
  end

  private

  def item_attrs
    params
      .require(:item)
      .permit(:body, :source, :category, :category, :sub_category)
  end
end
