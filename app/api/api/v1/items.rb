module API
  module V1
    class Items < API::V1::Base
      desc 'Fetch all items', params: Entities::ItemEntity.documentation
      resource :items do
        get do
          present ItemsRepository.new.all, with: Entities::ItemEntity
        end
      end
    end
  end
end
