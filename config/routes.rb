Rails.application.routes.draw do
  resources :schools
  resources :cities
  resources :architects
  resources :houses, only: [ :index, :show, :create, :update, :destroy]
  resources :users, only: [:show, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post '/login', to: 'sessions#create'
  delete '/logout', to:'sessions#delete' 
  get '/authorized_user', to: 'users#show'
end
