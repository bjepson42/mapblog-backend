Rails.application.routes.draw do
  resources :pictures
  resources :posts
  resources :locations
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post '/login', to: 'auth#create'
  get '/users/id:', to: 'users#show'
  patch '/signup', to: 'users#create'
  patch '/profile', to: 'users#update'
end
