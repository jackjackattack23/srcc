Rails.application.routes.draw do
  resources :students

  root to: 'visitors#index'
  devise_for :users
  resources :users
  
  get '/movers' => 'students#movers', as: 'movers'
  get '/wigglers' => 'students#wigglers', as: 'wigglers'
  get '/shakers' => 'students#shakers', as: 'shakers'
  get '/creators' => 'students#creators', as: 'creators'
  get '/experimenters' => 'students#experimenters', as: 'experimenters'
  get '/investigators' => 'students#investigators', as: 'investigators'
  get '/dreamers' => 'students#dreamers', as: 'dreamers'
  get '/inventors' => 'students#inventors', as: 'inventors'
  get '/explorers' => 'students#explorers', as: 'explorers'
  get '/kds' => 'students#kds', as: 'kds'
  
 end
