Rails.application.routes.draw do

  get 'modifications/index'
  get 'modifications/new'
  get 'modifications/create'
  get 'modifications/edit'
  get 'modifications/update'
  get 'modifications/destroy'
  get 'activities/index'
  get 'activities/new'
  get 'activities/create'
  get 'activities/edit'
  get 'activities/update'
  get 'activities/destroy'
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

end
