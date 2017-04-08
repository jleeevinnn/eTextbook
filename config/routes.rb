Rails.application.routes.draw do
  default_url_options :host => "http://etextbook.herokuapp.com"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :sections, only: [:new, :create, :index, :destroy]
  resources :chapters, only: [:index]
  root 'chapters#index'
end
