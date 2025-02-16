Rails.application.routes.draw do
  get "sessions/new"
  get "sessions/create"
  get "sessions/destroy"
  get "users/new"
  get "users/create"
  get "users/show"
  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'
  resources :users, only: [:show]
end
