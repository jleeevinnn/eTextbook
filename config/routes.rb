Rails.application.routes.draw do
  root 'chapters#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :sections, only: [:new, :create, :index, :destroy]
  resources :chapters, only: [:index]
get '/sections/:id', to: 'sections#show'
  default_url_options :host => "localhost:3000"
end
