Rails.application.routes.draw do
  root to: 'users#new'
  post '/', to: 'users#create'
  resources :users, :only => [:show, :edit, :update ]
  resources :shops, :only => [:show, :edit, :update ]
end
