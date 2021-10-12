Rails.application.routes.draw do
  resource :authentication
  resources :users
  resources :items
  resources :pictures
  resources :cartitems
  resources :bookeditems

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
