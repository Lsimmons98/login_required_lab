Rails.application.routes.draw do
  resources :secrets, only: [:show]

  get 'show', to: 'secrets#show'
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy', as: 'logout'

  root 'products#index'
end
