Rails.application.routes.draw do
  resources :tweets
  get 'tweets/index'
  get 'tweets/new'
  # resources :users
  
  # get 'users/index'
  # get 'users/new'
  
  root 'tweets#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
