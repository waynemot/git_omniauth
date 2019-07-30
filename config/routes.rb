Rails.application.routes.draw do
  #
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }
  resources :users, only: [:index, :show]
  resources :contents
  #get 'users/index'
  #get '/users/auth/cas/callback', controller: :callbacks, method: :get
  #get '/sessions/callback', controller: :sessions, method: :get
  root to: 'users#index'
end
