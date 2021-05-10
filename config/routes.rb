Rails.application.routes.draw do
  get '/', to: 'static#accueil'
  get 'welcome', to: 'static#welcome'
  get 'team', to: 'static#team'
  get 'contact', to: 'static#contact'
  get 'team/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
