Rails.application.routes.draw do

  get 'tasks/index'
  get 'tasks/new'
  get 'tasks/create'
  get 'tasks/edit'
  get 'tasks/update'
  get 'tasks/destroy'
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

end
