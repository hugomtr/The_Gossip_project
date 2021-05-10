Rails.application.routes.draw do
  get '/gossip/:gossip', to: 'static#gossip_page'
  get 'accueil', to: 'static#accueil'
  get '/' , to: 'static#welcome'
  post '/', to: 'static#welcome_post'
  get 'team', to: 'static#team'
  get 'contact', to: 'static#contact'
  get '/user/:user_first_name', to: 'static#user', as: 'user'
  get 'team/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end