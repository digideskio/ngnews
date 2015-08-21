module API
  module V1
    class Items < API::V1::Base
      desc 'Fetch all items', entity: Entities::ItemEntity, is_array: true

      resource :items do
        params do
          CategoriesRepository.new.all.map(&:to_sym).each do |cat|
            optional cat, type: String, desc: "Filter by category #{cat}"
          end
        end

        get do
          categories = declared(params, include_missing: false).to_h
          present ItemsRepository.new.filter_by(categories), with: Entities::ItemEntity
        end
      end
    end
  end
end
