Rails.application.routes.draw do
  root to: 'users#new'
  post '/', to: 'users#create'
  resources :users, :only => [:show]
  resources :shops, :only => [:show, :destroy]
  post "/shops/create", to: "shops#create"
  delete '/logout', to: "users#destroy"

  get '/search', to: "statics#new_search"
  post '/search', to: "statics#search"
end
