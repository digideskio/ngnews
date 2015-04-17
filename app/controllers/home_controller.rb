class HomeController < ApplicationController
  expose(:items) { ItemDecorator.decorate_collection(Item.all) }

  def index
  end
end
