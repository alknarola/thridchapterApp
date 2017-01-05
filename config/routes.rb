Rails.application.routes.draw do

  get 'user/new'

  root 'staticpages#home'

  get '/contact',to: 'staticpages#contact'

  get '/signup',to: 'staticpages#signup'

  get '/signin',to: 'staticpages#signin'

  get '/home',to: 'staticpages#home'

  get '/help',to: 'staticpages#help'

  get '/about',to: 'staticpages#about'

  get 'signup', to: 'user#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
