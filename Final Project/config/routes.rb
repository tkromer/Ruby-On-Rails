Rails.application.routes.draw do

  get 'sessions/new'

  root 'static_pages#home'

  get '/admin', to: 'static_pages#admin'
  
  get '/signup', to: 'users#new'
  
  post '/signup', to: 'users#create'
  
  resources :users
  
  get    '/login',   to: 'sessions#new'
  
  post   '/login',   to: 'sessions#create'
  
  post    '/edit',   to: 'users#edit'
  
  delete '/logout',  to: 'sessions#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
