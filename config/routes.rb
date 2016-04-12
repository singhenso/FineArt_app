Rails.application.routes.draw do

  resources :users, :galleries

  # root 'sessions#new'
  root 'sessions#new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'


end
