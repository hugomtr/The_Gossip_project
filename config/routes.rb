Rails.application.routes.draw do
  resources :comments
  resources :users, except: [:destroy]
  #get '/gossip/:gossip', to: 'static#gossip_page'
  resources :gossip, except: [:create]
  post '/gossip', to: 'gossip#create', as: 'gossip_post' 
  
  get 'accueil', to: 'static#accueil'
  get '/' , to: 'static#welcome'
  post '/', to: 'static#welcome_post'
  get 'team', to: 'static#team'
  get 'contact', to: 'static#contact'
  get 'team/index'
  
  resources :city, only: [:index, :show]

  #get '/user/:user_first_name', to: 'static#user', as: 'user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
