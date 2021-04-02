Rails.application.routes.draw do
  root to: 'users#new'
  post '/', to: 'users#create'
  resources :users, :only => [:show]
  resources :shops, :only => [:show, :create]
  delete '/logout', to: "users#destroy"
end
