Rails.application.routes.draw do
  root :to => "welcome#index"

  resources :users, only: [:new, :create]

  resources :trucks do
    member do
      put :reserve
    end
  end

  get 'welcome/index'
  get 'sessions/new'
  get 'register' => 'trucks#new', :as => :register
  get 'companies/new'
  get 'companies/create'
  post '/login' => 'sessions#new', :as => :login
  post '/logout' => 'sessions#destroy', :as => :logout
  post '/sessions/create' => 'sessions#create'
end
