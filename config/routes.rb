Rails.application.routes.draw do
  resources :items
  resources :cart_items
  resources :carts
  resources :users

  # resources :users, only: [:create]
  #   post '/login', to: 'auth#create'
  #   post '/auto_login', to: 'auth#auto_login'
  #   get '/logged_in', to: 'application#logged_in?'
  #   get '/things', to: 'things#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
