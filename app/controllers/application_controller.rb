class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include Knock::Authenticable
  protect_from_forgery with: :exception
  before_action :authenticate

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

  def current_user
    @current_user = OpenStruct.new(admin?: true)
  end
end
