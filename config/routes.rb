Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :create, :destroy]
  resources :users, only: [:index, :show, :create, :update, :destroy]

  post '/presigned_url', to: 'direct_upload#create'

  post '/signup', to: 'users#create'
  post '/login', to: 'authenticate#create'
  get '/profile', to: 'authenticate#profile'

end
