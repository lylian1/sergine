Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :users, only: [:new, :create]
resources :client, only: [:index, :show]
resources :produit, except: [:edit, :update, :destroy]
end
