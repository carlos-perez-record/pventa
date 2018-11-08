Rails.application.routes.draw do


  get 'unities/index'
  get 'unities/new'
  get 'unities/create'
  get 'unities/edit'
  get 'unities/update'
  get 'unities/destroy'
  root 'points#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create]
  resources :points
  resources :technologies, except: [:show]
  resources :centers, except: [:show]
  resources :zones
  resources :devices
  resources :actives
  resources :modifications
  resources :reforms
  resources :activities
  resources :tasks

end
