Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  resources :tweets
  root "tweets#index"
end
