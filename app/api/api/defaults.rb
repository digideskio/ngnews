module API
  module Defaults
    extend ActiveSupport::Concern

    included do
      use API::Logger
      logger Rails.logger
      format :json
    end
  end
end
