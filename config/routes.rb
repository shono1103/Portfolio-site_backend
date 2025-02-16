Rails.application.routes.draw do
  #セッションのルーティング
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  #ユーザーのルーティング
  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'
  resources :users, only: [:show]
  
end
