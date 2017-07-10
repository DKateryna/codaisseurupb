Rails.application.routes.draw do
  resources :categories
  devise_for :users

  root to: 'pages#home'

  resources :users, only: [:show]
  resources :events, except: [:destroy]
  resources :photos
  resources :profiles
  get 'about' => 'pages#about'

  namespace :api do
    resources :events do
      resources :registration, only: %i[create update destroy]
    end
  end
end
