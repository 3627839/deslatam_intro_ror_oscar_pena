Rails.application.routes.draw do
  resources :pins
  devise_for :users
  get 'pages/index'
  get 'index', to:'pages#index'
  get 'pages/home'

  get 'pages/show'

  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
