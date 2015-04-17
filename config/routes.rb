Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :items, only: [:create, :index]
    end
  end

  root 'home#index'
end
