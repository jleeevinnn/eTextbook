Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :sections, only: [:new, :create, :index, :destroy]
  resources :chapters, only: [:index]
  root 'chapters#index'
end
