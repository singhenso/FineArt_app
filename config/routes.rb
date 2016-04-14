Rails.application.routes.draw do

  resources :users

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
    resources :artists do
      resources :items
    end
  end
end
