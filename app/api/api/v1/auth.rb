module API
  module V1
    module Auth
      def validate_token!
        if params[:token].present?
          return if EasyTokens::TokenValidator.valid?(params[:token])
          error!('Token is invalid', 401) and return
        else
          error!('Token is required', 401)
        end
      end
    end
  end
end
