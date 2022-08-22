Rails.application.routes.draw do
  resources :activity_bucket_lists
  resources :categories
  resources :bucket_lists
  resources :activities
  resources :likes
  resources :users do
    resources :bucket_lists
  end
  get '/hello', to: 'application#hello_world'
  post '/signup', to: 'users#create'
  post '/signin', to: 'sessions#create'
  get '/me', to: 'users#show'
  delete '/signout', to: 'sessions#destroy'
  
  get '*path',
      to: 'fallback#index',
      constraints: ->(req) { !req.xhr? && req.format.html? }

end
