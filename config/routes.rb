Rails.application.routes.draw do
  resources :contents
  #devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: { omniauth_callbacks: "callbacks" }
  resources :users, only: [:index]
  resources :contents
  get 'users/index'

  root 'contents#index'
end
