Rails.application.routes.draw do

  get 'centers/index'
  get 'centers/new'
  get 'centers/create'
  get 'centers/update'
  get 'centers/edit'
  get 'centers/show'
  get 'centers/destroy'
  get 'centers/center_params'
  root 'points#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create]
  resources :points
  resources :technologies
end
