Rails.application.routes.draw do
  post '/auth', to: 'authentication#login'
  resources :sessions, only: [:create]
  resources :users
  resources :items
  resources :pictures
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
