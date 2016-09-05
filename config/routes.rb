Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show, :index]
  resources :routes, only: [:show, :index]
  resources :runs, only: [:show]

  root 'sessions#new'

  post '/signin', to: 'sessions#create'

  get '/signout', to: 'sessions#destroy'
end
