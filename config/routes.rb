Rails.application.routes.draw do
  resources :bookstore_inventories
  resources :purchases
  resources :events
  resources :bookstores
  resources :publishing_houses
  resources :authors
  resources :books do
    resources :reviews
  end
  resources :locations
  get 'sessions/new'
  resources :comments
  resources :users
  #get 'static_pages/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root 'static_pages#home'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/buybook', to: 'purchases#new'
  
  
end
