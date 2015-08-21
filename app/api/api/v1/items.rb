module API
  module V1
    class Items < API::V1::Base
      desc 'Fetch all items', entity: Entities::ItemEntity, is_array: true

      resource :items do
        params do
          optional :categories, type: String, desc: 'Categories joined by a comma', default: ''
        end

        get do
          p = declared(params)
          present ItemsRepository.new.filter_by(p[:categories].split(',')), with: Entities::ItemEntity
        end
      end
    end
  end
end
