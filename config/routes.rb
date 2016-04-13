Rails.application.routes.draw do

  get 'items/edit'

  get 'items/index'

  get 'items/new'

  get 'items/show'

  get 'artist/edit'

  get 'artist/idex'

  get 'artist/new'

  get 'artist/show'

  resources :users, :galleries, :artists

  # root 'sessions#new'
  root 'sessions#new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  post '/users/:user_id/galleries/new' => "galleries#new"
  get '/users/:user_id/galleries/' => "galleries#index"
  get '/items' => "items#index"

  resources :galleries do
    # /galleries/:id/artists
    resources :artists
  end
end
