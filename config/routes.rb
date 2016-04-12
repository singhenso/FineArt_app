Rails.application.routes.draw do

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

  resources :galleries do
    # /galleries/:id/artists
    resources :artists
  end
end
