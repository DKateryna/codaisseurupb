Rails.application.routes.draw do
  resources :categories
  devise_for :users

  root to: 'pages#home'

  resources :users, only: [:show]
  resources :events, except: [:destroy]
  resources :photos
  resources :profiles, only: %i[new edit create update]

  namespace :api do
    resources :events
  end
end
