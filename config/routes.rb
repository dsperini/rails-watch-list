Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :lists
  root "lists#index"

  # A user can see all the lists (for list route)
  # GET "lists"
  get 'lists', to: 'lists#index'

  # A user can see the details of a given list and its name (for list route)
  # GET "lists/42"
  get 'lists/:id', to: 'lists#show'
  # A user can create a new list (for list route)
  # GET "lists/new"
  # POST "lists"
  get 'lists/new', to: 'lists#new'
  post 'lists', to: 'lists#create'

  # A user can add a new bookmark (movie/list pair) to an existing list (for bookmark route)
  # GET "lists/42/bookmarks/new"
  # POST "lists/42/bookmarks"
  get '/lists/:id/bookmarks/new', to: 'bookmarks#new'
  post 'lists/:id/bookmarks', to: 'bookmarks#create'
  delete 'list/:id/bookmarks', to: 'bookmarks#destroy'
end
