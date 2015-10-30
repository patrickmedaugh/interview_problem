Rails.application.routes.draw do
  resources :users, :only => [:show, :new, :create, :index]
  root 'users#new'
end
