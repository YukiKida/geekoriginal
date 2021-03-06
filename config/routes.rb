Rails.application.routes.draw do
  get 'notifications/index'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  get 'top/index' => 'top#index'
  get 'top/index_en' => 'top#index_en'
  get 'top/login' => 'top#login'
  get 'top/new' => 'top#new'

  resources :users, only: [:index,:show]
  root "top#index"
  resources :messages, only: [:create]
  resources :rooms, only: [:create,:show,:index]
  resources :notifications, only: [:index,:update]

end
