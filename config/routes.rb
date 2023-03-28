Rails.application.routes.draw do
  resources :collections, only: [:index, :show, :destroy]
  resources :books, only: [:index, :show, :create, :destroy]

  resources :users, only: [:index, :create, :name, :show, :destroy]

  resources :admins, only: [:index, :create, :show]

  post '/users/:id/add_book', to: 'users#add_book'

  post '/login' , to: 'session#create'
  delete '/logout', to: 'session#destroy' 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
