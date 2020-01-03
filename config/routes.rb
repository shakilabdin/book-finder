Rails.application.routes.draw do
  resources :reviews, only: [:new, :create, :edit, :update, :destroy]
  resources :books
  resources :genres, only: [:index, :show]
  resources :authors
  resources :users, only: [:show, :new, :create]
  root 'welcome#home'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/search', to: 'books#index'
  get '/logout', to: 'application#logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
