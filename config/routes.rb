Rails.application.routes.draw do
  resources :challenges
  root "challenges#index"
end
