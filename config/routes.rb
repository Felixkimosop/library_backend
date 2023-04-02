Rails.application.routes.draw do
  resources :collections, only: [:index, :show, :destroy]
  resources :books, only: [:index, :show, :create, :destroy]

  resources :users, only: [:index, :create, :name, :show, :destroy]

  resources :admins, only: [:index, :create, :show]


  # post '/users/:id/books', to: 'users#add_book'

  post '/users/:id/add_book/:book_id', to: 'users#add_book'
  get '/users/:id', to: 'users#show'

  post '/login' , to: 'session#create'
  delete '/logout', to: 'session#destroy' 
  get '/loggedin', to: 'application#logged'
  # get '/loggedin', to: 'users#current_user'
  get '/logged', to: 'application#administration'
  delete 'logout', to: 'sessions#destroy'
  get'/home', to: 'books#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
