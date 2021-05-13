Rails.application.routes.draw do

  resources :sessions, only: [:new, :create, :destroy]

  resources :comments, except: [:new]
  get '/comments/new/:number', to: 'comments#new' , as: 'new_comment' 
  

  resources :users, except: [:destroy]
  #get '/gossip/:gossip', to: 'static#gossip_page'
  resources :gossip do
    resources :likes 
  end

  get '/contact', to: 'static#contact' 
  get '/team' , to: 'static#team'

  post '/gossip', to: 'gossip#create', as: 'gossip_post' 
  
  resources :city, only: [:index, :show]


  #get '/user/:user_first_name', to: 'static#user', as: 'user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
