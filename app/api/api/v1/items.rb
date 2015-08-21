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

        params do
          requires :token, type: String, desc: 'API token'
          group :item, type: Hash do
            requires :body, type: String
            requires :category, type: String
            requires :start_date, type: Date
            optional :source, type: String
            optional :sub_category, type: String
            optional :end_date, type: Date
            optional :is_public, type: Boolean
          end
        end

        post do
          validate_token!
          create_item = ::Items::Create.new(declared(params).item).call
          present create_item.data, with: Entities::ItemEntity
        end
      end
    end
  end
end
