Rails.application.routes.draw do
  #セッションのルーティング
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  delete 'logout', to: 'sessions#destroy'
  #ユーザーのルーティング
  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'
  get 'users/:id/profile_edit', to: 'users#edit'
  patch 'users/:id/profile_update', to: 'users#update'
  resources :users, only: [:show ,:edit, :update]
  #ルートのルーティング
  root 'sessions#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
