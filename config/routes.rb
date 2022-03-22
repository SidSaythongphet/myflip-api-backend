Rails.application.routes.draw do
  resources :users

  post '/presigned_url', to: 'direct_upload#create'

  post '/signup', to: 'users#create'
  post '/login', to: 'authenticate#create'
  get '/profile', to: 'authenticate#profile'

end
