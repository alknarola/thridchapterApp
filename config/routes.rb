Rails.application.routes.draw do

  #staticpage controller routes
  root 'staticpages#home'

  get '/contact',to: 'staticpages#contact'

  get '/signin',to: 'staticpages#signin'

  get '/home',to: 'staticpages#home'

  get '/help',to: 'staticpages#help'

  get '/about',to: 'staticpages#about'

  #user controller routes
  get '/signup', to: 'users#new'
  get '/show', to: 'users#show'

  post '/signup',to: 'users#create'
  resources :users

  #session controller routes
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
