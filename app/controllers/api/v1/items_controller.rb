module Api
  module V1
    class ItemsController < ApplicationController
      skip_before_action :verify_authenticity_token, only: :create

      def create
        item_attrs = params.require(:item).permit(:body, :source, :kind)
        item = ItemsRepository.new.add item_attrs
        render json: item
      end
    end
  end
end
