Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  get 'top/index' => 'top#index'
  get 'top/login' => 'top#login'
  get 'top/new' => 'top#new'

  resources :users, only: [:index,:show]
  root "users#index"
  resources :messages, only: [:create]
  resources :rooms, only: [:create,:show,:index]

end
