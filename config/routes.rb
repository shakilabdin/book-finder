Rails.application.routes.draw do
  resources :reviews
  resources :books
  resources :genres
  resources :authors
  resources :users
  root 'welcome#home'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
