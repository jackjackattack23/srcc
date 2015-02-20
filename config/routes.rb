Rails.application.routes.draw do
  resources :students

  root to: 'visitors#index'
  devise_for :users
  resources :users

  post 'students/new' => 'students#new'
  
 end
