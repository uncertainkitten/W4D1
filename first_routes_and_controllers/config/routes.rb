Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users

  # get '/users/finder', to: 'users#show', as: 'find_user'

  # get '/users', to: 'users#index'
  # get '/users/new', to: 'users#new', as: 'new_user'
  # post '/users', to: 'users#create'
  # patch '/users/:id', to: 'users#update', as: 'user'
end
