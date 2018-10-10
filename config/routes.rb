Rails.application.routes.draw do


  get 'zones/index'
  get 'zones/new'
  get 'zones/create'
  get 'zones/edit'
  get 'zones/update'
  get 'zones/destroy'
  root 'points#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create]
  resources :points
  resources :technologies, except: [:show]
  resources :centers, except: [:show]
end
