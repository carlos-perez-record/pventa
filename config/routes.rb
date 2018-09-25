Rails.application.routes.draw do

  get 'technologies/new'
  get 'technologies/create'
  get 'technologies/edit'
  get 'technologies/update'
  get 'technologies/destroy'
  root 'points#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create]
  resources :points
end
