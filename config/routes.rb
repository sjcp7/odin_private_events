Rails.application.routes.draw do
  root 'sessions#index'
  get '/login', to: 'sessions#new', as: 'new_login'
  post '/login', to: 'sessions#create', as: 'create_login'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  resources :users, only: [:new, :create, :show]
  resources :events, only: [:index, :new, :create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
