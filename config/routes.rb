Rails.application.routes.draw do

  get 'welcome/home'

  get 'welcome/about_us'

  get 'welcome/contact'

  get 'welcome/community'

  get 'welcome/index'

  get 'writers/new'

  get 'writers/create'

  root 'writers#index'
  resources :samples, only: [:new, :create, :destroy]
  # we only want to display a sign up page and create users
  resources :sessions, only: [:new, :create, :destroy]
  resources :writers, only: [:new, :create, :edit, :update]
  resources :users, only: [:new, :create]
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
end
