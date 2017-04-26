Rails.application.routes.draw do

  get 'writers/new'

  get 'writers/create'

  root 'writers#index'
  resources :samples, only: [:new, :create]
  # we only want to display a sign up page and create users
  resources :writers, only: [:new, :create]

end
