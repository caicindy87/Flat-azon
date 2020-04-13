Rails.application.routes.draw do
  get '/signup', to: 'users#new'
  resources :users, except: [:new, :index, :destroy]
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
