Rails.application.routes.draw do
  resources :likes
  resources :comments, only: [:create, :destroy]
  resources :posts, only: [:index, :show, :create, :destroy]
  resources :users, only: [:index, :create, :update, :destroy]
  resources :users, only: [:show] do
    resources :posts, only: [:index]
  end
  resources :followships, only: [:create, :destroy]

  post '/presigned_url', to: 'direct_upload#create'

  post '/signup', to: 'users#create'
  post '/login', to: 'authenticate#create'
  get '/profile', to: 'authenticate#profile'

end
