Rails.application.routes.draw do

  get 'actives/index'
  get 'actives/new'
  get 'actives/create'
  get 'actives/edit'
  get 'actives/update'
  get 'actives/destroy'
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

end
