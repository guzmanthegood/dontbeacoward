Rails.application.routes.draw do
  
  resources :challenges
  
  get 'index', to: 'home#index'
  get 'about', to: 'home#about'
  
  root "home#index"

end
