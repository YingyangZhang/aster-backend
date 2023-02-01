Rails.application.routes.draw do
  resources :users, only: [:create, :update]
  resources :requests, only: [:create, :update, :destroy]
  resources :galleries, only: [:index]
  post '/login', to: 'auth#create'
  get '/me', to: 'users#show'
end
