Rails.application.routes.draw do
  scope path: ApplicationResource.endpoint_namespace,
        defaults: { format: :jsonapi } do
    scope module: "api/v1", as: "api" do
      resources :bookmarks

      resources :reviews

      resources :users

      resources :roles

      resources :actors

      resources :movies

      resources :directors
    end
    mount VandalUi::Engine, at: "/vandal"
    # your routes go here
  end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "directors#index"
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
