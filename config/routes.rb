Rails.application.routes.draw do

  
  resources :mpesas
  resources :fixtures
  resources :results
  resources :cart_items
  resources :members
  resources :categories
  resources :names
  resources :products
  resources :blogs
  # config/routes.rb
  namespace :api do

    namespace :v1 do
      resources :blogs, only: [:index, :show, :create, :update, :destroy]
      resources :users, only: [:create]
      resources :book_orders
      resources :fixtures, only: [:index, :show, :create, :update, :destroy]
      resources :cart_items, only: [:index, :show, :create, :update, :destroy]
      resources :orders
      resources :products, only: [:index, :show, :create, :update, :destroy] do
        resources :categories, only: [:index, :show, :create, :update, :destroy]


      end

      resources :members, only: [:index, :show, :create, :update, :destroy]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      
    end
  end
end