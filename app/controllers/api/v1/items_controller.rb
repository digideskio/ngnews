module Api
  module V1
    class ItemsController < ApplicationController
      skip_before_action :verify_authenticity_token, only: :create

      check_token_on :create, :index

      expose(:items_repository) { ItemsRepository.new }

      def create
        item_attrs = params.require(:item).permit(:body, :source, :category)
        create_item = Items::Create.new(items_repository, item_attrs).call
        json_response = if create_item.success?
                          create_item.data
                        else
                          { errors: create_item.errors }
                        end
        render json: json_response
      end

      def index
        render json: items_repository.all
      end
    end
  end
end
