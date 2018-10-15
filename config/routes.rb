Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  root "top#index"
end
