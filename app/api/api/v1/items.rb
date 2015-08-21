module API
  module V1
    class Items < API::V1::Base
      desc 'Fetch all items', entity: Entities::ItemEntity, is_array: true

      resource :items do
        get do
          present ItemsRepository.new.all, with: Entities::ItemEntity
        end
      end
    end
  end
end
