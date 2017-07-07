Rails.application.routes.draw do
  resources :categories
devise_for :users

  root to: "pages#home"

  resources :users, only: [:show]
  resources :events, except: [:destroy]
  resources :photos
  resources :profiles, only: [:new, :edit, :create, :update]


end
