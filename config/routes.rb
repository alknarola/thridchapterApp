Rails.application.routes.draw do
  root 'staticpages#home'

  get '/contact',to: 'staticpages#contact'



  get '/signin',to: 'staticpages#signin'

  get '/home',to: 'staticpages#home'

  get '/help',to: 'staticpages#help'

  get '/about',to: 'staticpages#about'

  get '/signup', to: 'users#new'
  get '/show', to: 'users#show'

  post '/signup',to: 'users#create'
  resources :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
