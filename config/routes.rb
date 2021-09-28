Rails.application.routes.draw do
  root :to => "welcome#index"

  get 'welcome/index'
  get 'sessions/new'
  get 'register' => 'trucks#new', :as => :register
  get 'companies/create'
  get 'users/new'
  post 'users/create'
  post '/login' => 'sessions#new', :as => :login
  post '/logout' => 'sessions#destroy', :as => :logout
  post '/sessions/create' => 'sessions#create'
end
