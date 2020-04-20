Rails.application.routes.draw do
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
  resources :unities
  resources :uses

end
