module API
  module V1
    class Base < API::Base
      version 'v1'
      mount Items

    end
  end
end
