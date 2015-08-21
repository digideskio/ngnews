module API
  module V1
    class Base < API::Base
      helpers API::V1::Auth
      version 'v1'
      mount Items
    end
  end
end
