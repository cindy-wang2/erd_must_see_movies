Rails.application.routes.draw do
  root :to => "directors#index"
  resources :bookmarks
  resources :reviews
  devise_for :users
  resources :users
  resources :roles
  resources :actors
  resources :movies
  resources :directors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
