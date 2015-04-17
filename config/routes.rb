Rails.application.routes.draw do
  mount EasyTokens::Engine, at: '/et'

  namespace :api do
    namespace :v1 do
      resources :items, only: [:create, :index]
    end
  end
end
