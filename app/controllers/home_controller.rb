class HomeController < ApplicationController
  expose(:items) { Item.all }

  def index
  end
end
