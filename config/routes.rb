Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      
      post '/login', to: 'sessions#login'
      get '/autologin', to: 'sessions#autologin'

      resources :orders
      get '/user-orders', to: 'orders#user_orders'
      
      resources :products, only: [:create, :index, :show, :destroy]
      get '/products_by', to: 'products#filter_products'
      
      resources :users, only: [:index]
      post '/signup', to: 'users#create'
    end
  end
end
