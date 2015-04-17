module Api
  module V1
    class ItemsController < ApplicationController
      skip_before_action :verify_authenticity_token, only: :create

      check_token_on :create, :index

      expose(:items_repository) { ItemsRepository.new }

      def create
        item_attrs = params.require(:item).permit(:body, :source, :kind)
        item = items_repository.add item_attrs
        render json: item
      end

      def index
        render json: items_repository.all
      end
    end
  end
end
