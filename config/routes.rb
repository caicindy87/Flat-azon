Rails.application.routes.draw do
  root to: 'home#show'

  resources :users, except: [:new, :index, :destroy]

  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :categories, only: [:show]

  resources :items, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  resources :carts, only: [:show, :create, :update]

  resources :cart_items, only: [:create, :update, :destroy]
  
  get '/search' => 'items#search', :as => 'search_item'

  post 'create', to: 'checkout#create', as: 'checkout_create'
  get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
  get 'success', to: 'checkout#success', as: 'checkout_success'
  match '*unmatched', to: 'application#route_not_found', via: :all

end
