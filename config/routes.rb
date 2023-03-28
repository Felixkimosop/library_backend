Rails.application.routes.draw do
  resources :collections, only: [:index, :show, :destroy]
  resources :books, only: [:index, :show, :create, :destroy]

  resources :users, only: [:index, :create, :show, :destroy]

  resources :admins, only: [:index, :create, :show]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
