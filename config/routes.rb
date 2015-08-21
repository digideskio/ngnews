Rails.application.routes.draw do
  mount EasyTokens::Engine, at: '/et'

  mount API::Base => '/api'
  mount GrapeSwaggerRails::Engine => '/api/docs'

  resources :settings, only: [:index]
  resource :items, only: [:create]

  root 'home#index'
end
