EventSubManagement::Application.routes.draw do

  resources :users
  resources :events
  resources :sessions, only: [:new, :create, :destroy]
  resources :subscriptions

  root  to: 'static_pages#home'

  match '/signup', to: 'users#new'
  match '/signin', to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  
end
