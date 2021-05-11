Rails.application.routes.draw do
  #get '/gossip/:gossip', to: 'static#gossip_page'
  get 'accueil', to: 'static#accueil'
  resources :gossip, except: [:create]
  post '/gossip', to: 'gossip#create', as: 'gossip_post' 
  get '/' , to: 'static#welcome'
  post '/', to: 'static#welcome_post'
  get 'team', to: 'static#team'
  get 'contact', to: 'static#contact'
  get 'team/index'

  resources :user
  #get '/user/:user_first_name', to: 'static#user', as: 'user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end