Rails.application.routes.draw do
  resources :students

  root to: 'visitors#index'
  devise_for :users
  resources :users
  
  get '/movers' => 'students#movers', as: 'movers'
 end
