Rails.application.routes.draw do
  root to: 'home#show'

  resources :users, except: [:new, :index, :destroy]

  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :categories, only: [:index, :show]

  resources :items, only: [:new, :create, :show, :edit, :update, :destroy]

  resources :carts, only: [:show, :create, :update]

  resources :cart_items, only: [:create, :update, :destroy]
  
  get '/search' => 'items#search', :as => 'search_item'


end
