Rails.application.routes.draw do
  resources :blogs
  # config/routes.rb
  namespace :api do

    namespace :v1 do
      resources :blogs, only: [:index, :show, :create, :update, :destroy]
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end