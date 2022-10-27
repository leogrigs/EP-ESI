Rails.application.routes.draw do
  resources :user_areas
  resources :cards
  resources :groups
  resources :usuarios
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'welcome#index'

  #User routes
  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]

  #Sessions routes
  get '/login', to: 'sessions#login'
  post 'sign_in', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'

end
